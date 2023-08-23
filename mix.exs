defmodule Plausible.MixProject do
  use Mix.Project

  def project do
    [
      app: :plausible,
      version: "0.0.1",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      description: description(),
      package: package(),
      name: "Plausible Analytics",
      source_url: "https://github.com/blisscs/plausible"
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
      {:finch, "~> 0.16.0"},
      {:bypass, "~> 2.1.0", only: :test},
      {:jason, "~> 1.0"},
      {:ex_doc, "~> 0.30.5", only: :dev, runtime: false}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description() do
    "Elixir library to push events to Plausible Analytics."
  end

  defp package() do
    [
      name: "plausible",
      links: %{"Github" => "https://github.com/blisscs/plausible"},
      licenses: ["The Unlicense"]
    ]
  end
end
