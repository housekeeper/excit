use Mix.Config

# server for wallaby
config :excit, ExcitWeb.Endpoint,
  http: [port: 4001],
  server: true

config :logger, level: :warn
config :cabbage, features: "features/"
