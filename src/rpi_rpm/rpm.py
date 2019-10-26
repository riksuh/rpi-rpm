from .server import BaseServer

import json
from typing import Dict

from gpiozero import DigitalInputDevice, DigitalOutputDevice
from werkzeug.wrappers import Response
from werkzeug.utils import redirect


class RemotePowerModule(BaseServer):
    def __init__(self, pwr_pin, res_pin, led_pin):
        super().__init__()
        self._pwr_sw = DigitalOutputDevice(pwr_pin)
        self._res_sw = DigitalOutputDevice(res_pin)
        self._pwr_led = DigitalInputDevice(led_pin)

    @property
    def power_status(self) -> Dict:
        return {
            "power": "on" if self._pwr_led.value == 1 else "off"
        }

    def power_on(self):
        if self.power_status["power"] == "off":
            self._pwr_sw.blink(on_time=0.5, n=1)

    def power_off(self):
        if self.power_status["power"] == "on":
            self._pwr_sw.blink(on_time=0.5, n=1)

    def reset(self):
        self._res_sw.blink(on_time=0.5, n=1)


def make_json_response(data: Dict) -> Response:
    return Response(json.dumps(data), mimetype="application/json")


def create_rpm_server(pwr_pin=17, res_pin=27, led_pin=22) -> BaseServer:
    server = RemotePowerModule(pwr_pin, res_pin, led_pin)

    @server.route("/")
    @server.route("/status")
    def status():
        return make_json_response(server.power_status)

    @server.route("/power-on")
    def power_on():
        server.power_on()
        return redirect("/")

    @server.route("/power-off")
    def power_off():
        server.power_off()
        return redirect("/")

    @server.route("/reset")
    def reset():
        server.reset()
        return redirect("/")

    return server
