from . import wsgi_server

import json

from werkzeug.wrappers import Request, Response


@wsgi_server.route("/status")
def status(request: Request):
    data = {"Hello": "World"}
    return Response(json.dumps(data), mimetype="application/json")
