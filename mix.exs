defmodule Dataframe.MixProject do
  use Mix.Project

  def project do
    [
      app: :dataframe,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:explorer, "~> 0.1.0-dev", github: "amplifiedai/explorer", branch: "main"},
      {:vega_lite, "~> 0.1.0"},
      {:kino, "~> 0.3.0"},
      {:jason, "~> 1.2"}
    ]
  end
end
