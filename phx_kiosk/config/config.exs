# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phx_kiosk, PhxKioskWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SrucggxIYDFaqzKL8rS8MC43CwcSWZdbQ5p3LVFpXNYajgixNuKaVPZeyvDsRS6s",
  render_errors: [view: PhxKioskWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxKiosk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
