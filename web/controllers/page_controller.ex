defmodule Tern.PageController do
  use Tern.Web, :controller

  def index(conn, _params) do
    excuses = [
      "I have a fever",
      "My back pain is aching",
      "I have a viral or bacterial illness that’s contagious",
      "I am on strong medication that may affect my reaction time",
      "My illness prevents me from concentrating",
      "I am coughing, a lot"
    ]

    render conn, "index.html", excuse: Enum.random(excuses)
  end
end
