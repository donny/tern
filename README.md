# tern

Tern is a simple web site implemented using [Phoenix](http://www.phoenixframework.org) that gives a random excuse for a sick leave.

### Background

This project is part of [52projects](https://donny.github.io/52projects/) and the new stuff that I learn through this project: [Phoenix](http://www.phoenixframework.org).

### Project

In the spirit of [programmingexcuses.com](http://programmingexcuses.com), Tern is a simple web site implemented using [Phoenix](http://www.phoenixframework.org) that gives a random excuse for a sick leave. The screenshot below shows Tern in action:

![Screenshot](https://raw.githubusercontent.com/donny/tern/master/screenshot.png)

### Implementation

Tern is implemented using Phoenix and it was bootstrapped using the following command: `mix phoenix.new tern --no-ecto`. We don't need to use a database and that's why we don't need to include [Ecto](https://github.com/elixir-ecto/ecto), which is a domain specific language for writing queries and interacting with databases in Elixir. Tern was deployed on [Heroku](http://www.phoenixframework.org/docs/heroku).

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

### Conclusion

Using Phoenix to implement Tern is quite an overkill, we could implement it using a static web framework for example. But this gives me the chance to explore Phoenix and its project structure. Tern is an initial experiment to play with Phoenix. There are still other things that I would like to learn more: Ecto, Elixir channels, etc. In addition, I think using Elixir with Elm will be a great thing to learn.
