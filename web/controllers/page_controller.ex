defmodule PhoenixWebpackVueBoilerplate.PageController do
  use PhoenixWebpackVueBoilerplate.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
