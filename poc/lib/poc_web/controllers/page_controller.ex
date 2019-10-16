defmodule PocWeb.PageController do
  use PocWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
