# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_webpack_vue_boilerplate,
  ecto_repos: [PhoenixWebpackVueBoilerplate.Repo]

# Configures the endpoint
config :phoenix_webpack_vue_boilerplate, PhoenixWebpackVueBoilerplate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GbmUq3uniDQuXc4vgm1y3kKcJwRFlqSZhlk18WCwsi6w0YtvHsUyCjX8abj4rYhF",
  render_errors: [view: PhoenixWebpackVueBoilerplate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixWebpackVueBoilerplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
