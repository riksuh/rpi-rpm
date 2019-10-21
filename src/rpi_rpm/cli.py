from werkzeug.serving import run_simple

import click

from . import wsgi_server


GLOBAL_CONTEXT_SETTINGS = {
    "help_option_names": ["-h", "--help"]
}


@click.group(context_settings=GLOBAL_CONTEXT_SETTINGS)
def main():
    pass


@main.command(context_settings=GLOBAL_CONTEXT_SETTINGS,
              help="Run the app using werkzeug's built-in (development) server")
@click.option("--debug", "-d", is_flag=True,
              help="Start the server in debug mode")
@click.option("--bind", "-b", default="localhost:7000", type=str, show_default=True,
              help="The address and port the server should bind to")
@click.option("--reload", "-r", is_flag=True,
              help="Reload the server if it detects changes to local files")
def run(bind: str, debug: bool, reload: bool):
    hostname, port = bind.split(":", 1)
    run_simple(hostname, int(port), wsgi_server, use_reloader=reload, use_debugger=debug)
