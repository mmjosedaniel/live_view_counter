# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :counter, CounterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cOOItDmylS+Ht/Bgu1cx4BL0ELO0JN7ghYJcuVMpCzEvbbdguvw51GzuhXi8DC+8",
  render_errors: [view: CounterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Counter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "lSLANFSp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# LiveView
config :counter, CounterWeb.Endpoint,
   live_view: [
     signing_salt: "z/M5mbYqb8POj+XDtOXYvGnvXL1iRpyQ"
   ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
