# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :clock,
  ecto_repos: [Clock.Repo]

# Configures the endpoint
config :clock, ClockWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZM0yRUyaKB9+RXemXs3n9BFNIFP+J5FME3dOplcqoyUV3CubkCt8y3uqDoAlW8VB",
  render_errors: [view: ClockWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Clock.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
