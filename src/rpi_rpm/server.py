from typing import Callable, Optional, Union

from werkzeug.exceptions import HTTPException
from werkzeug.wrappers import Request, Response
from werkzeug.routing import Map, Rule


class BaseServer():
    def __init__(self):
        self._routes = Map()

    def __call__(self, environ, start_response):
        request = Request(environ)
        response = self.dispach_request(request)
        return response(environ, start_response)

    def route(self, location: str) -> Callable:
        def wrapper(func: Callable[[Optional[Request]], Response]):
            func_name = func.__name__ + "_callback"
            setattr(self, func_name, func)
            rule = Rule(location, endpoint=func_name)
            self._routes.add(rule)
            return func
        return wrapper

    def dispach_request(self, request: Request) -> Union[Response, HTTPException]:
        adapter = self._routes.bind_to_environ(request.environ)
        try:
            endpoint, values = adapter.match()
            return getattr(self, endpoint)(request, **values)
        except HTTPException as e:
            return e
