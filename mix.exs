defmodule Parseq.MixProject do
  use Mix.Project

  def project do
    [
      app: :parseq,
      version: "0.0.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      elixirc_options: [
        warnings_as_errors: true
      ],
    ]
  end

  def package do
    [
      maintainers: ["Daniel Sobol"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mynameisdaniil/parseq"},
    ]
  end

  def description do
    "Parallel and sequentual function composition for Elixir"
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exsync, "~> 0.2.4", only: [:dev]},
      {:benchee, "~> 1.0", only: [:dev]},
      {:dialyxir, "~> 1.1", only: [:test, :dev], runtime: false},
      {:credo, "~> 1.6", only: [:test, :dev]},
      {:propcheck, "~> 1.4", only: [:test, :dev]}
    ]
  end
end
