defmodule NewrelicInsights.MixProject do
  use Mix.Project

  @version "1.0.1"

  def project do
    [
      app: :newrelic_insights,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A way to publish custom events data to NewRelic Insights data explorer. ",
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      env: [account_id: false, api_key: false]
    ]
  end

  defp deps do
    [
      {:jason, ">= 1.0.0"},
      {:ok, "~> 1.9"},
      {:tesla, "~> 1.0.0-beta.1"}
    ]
  end

  defp package do
    [
      maintainers: [" Renê Schneider, Thales Flores "],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/renews/newrelic_insights"}
    ]
  end
end
