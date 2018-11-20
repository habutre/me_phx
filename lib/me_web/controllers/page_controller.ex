defmodule MeWeb.PageController do
  use MeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
