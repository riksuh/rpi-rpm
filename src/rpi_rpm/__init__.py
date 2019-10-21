from .server import BaseServer


class PowerManagementServer(BaseServer):
    def __init__(self):
        super().__init__()


wsgi_server = PowerManagementServer()

from . import routes  # noqa: E402, F401

__all__ = [
    "wsgi_server"
]
