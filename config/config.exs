# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tern,
  ecto_repos: [Tern.Repo]

# Configures the endpoint
config :tern, Tern.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CXCp6K5EEyZIiQlW/IMtWQ7WLIKfOkvf1e+oVQGy8czvbsLjW/x1rmrKud3WYu8y",
  render_errors: [view: Tern.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tern.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"