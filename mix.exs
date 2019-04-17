defmodule Excit.Mixfile do
  use Mix.Project

  @name    :excit
  @version "0.1.0"
  @organization ""

  @maintainers ["Your Name"]
  @github      "https://github.com/•••/excit"

  @description """
  What your template does (less than 300 characters)
  """

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  ">= 1.8.1",
      deps:    deps(),
      elixirc_paths: elixirc_paths(Mix.env),
      aliases: aliases(),
      docs: docs(),
      package: package(),
      description: @description,
      build_embedded:  in_production,
      test_coverage: test_coverage(),
      preferred_cli_env: preferred_cli_env()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      organization: @organization,
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{"GitHub" => @github}
    ]
  end

  defp docs do
    [
      name: @name,
      source_url: @github,
      homepage_url: "#",
      assets: "doc/assets",
      main: @name,
      extras: ["README.md"]
    ]
  end

  defp aliases do
    [
      test: "test --no-start"
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp test_coverage do
    [
      tool: ExCoveralls
    ]
  end

  defp preferred_cli_env do
    [
      coveralls: :test,
      "coveralls.detail": :test,
      "coveralls.post": :test,
      "coveralls.html": :test
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.8", runtime: false},
      {:dialyxir, "~> 0.5", runtime: false},
      {:excoveralls, "~> 0.8", runtime: false},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:sobelow, "~> 0.6", runtime: false},
    ]
  end

end
