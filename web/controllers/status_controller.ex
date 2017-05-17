defmodule Tern.StatusController do
  use Tern.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
