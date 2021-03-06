# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nlw,
  ecto_repos: [Nlw.Repo]

config :nlw, Nlw.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

config :nlw, Nlw.Mailer, adapter: Bamboo.LocalAdapter

# Configures the endpoint
config :nlw, NlwWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Fp4Nkqq7+AZ2uXKpquwUir+HgXlegZb1hE4YlwvVqR7v9tmUGzEJ78idlOXvbUkU",
  render_errors: [view: NlwWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Nlw.PubSub,
  live_view: [signing_salt: "5j2CF2Py"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
