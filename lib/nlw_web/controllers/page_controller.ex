defmodule NlwWeb.PageController do
  use NlwWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
