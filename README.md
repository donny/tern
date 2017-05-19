# tern

Tern is a simple web site implemented using [Phoenix](http://www.phoenixframework.org) that gives a random excuse for a sick leave.

### Background

This project is part of [52projects](https://donny.github.io/52projects/) and the new stuff that I learn through this project: [Phoenix](http://www.phoenixframework.org).

### Project

In the spirit of [programmingexcuses.com](http://programmingexcuses.com), Tern is a simple web site implemented using [Phoenix](http://www.phoenixframework.org) that gives a random excuse for a sick leave. The screenshot below shows Tern in action:

![Screenshot](https://raw.githubusercontent.com/donny/tern/master/screenshot.png)

### Implementation

Tern is implemented using Phoenix and it was bootstrapped using the following command: `mix phoenix.new tern --no-ecto`. We don't need to use a database and that's why we don't need to include [Ecto](https://github.com/elixir-ecto/ecto), which is a domain specific language for writing queries and interacting with databases in Elixir.

We created a new [page](http://www.phoenixframework.org/docs/adding-pages) to our Phoenix application and we just pass a random string to the template:

```elixir
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
```

Tern was deployed on [Heroku](http://www.phoenixframework.org/docs/heroku).

### Conclusion

...
