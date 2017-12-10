# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :enums_from_absinthe_to_ecto,
  ecto_repos: [EnumsFromAbsintheToEcto.Repo]

# Configures the endpoint
config :enums_from_absinthe_to_ecto, EnumsFromAbsintheToEctoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yViftKmAYzwTQqji86HNUmYxO+cdIlN3YvZNhdxg+wLJ3D2MLa9rU50CCAdBu0yN",
  render_errors: [view: EnumsFromAbsintheToEctoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EnumsFromAbsintheToEcto.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
