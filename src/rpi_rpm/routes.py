from . import wsgi_server

import json

from werkzeug.wrappers import Response


@wsgi_server.route("/")
def index():
    data = {"Hello": "World"}
    return Response(json.dumps(data), mimetype="application/json")
