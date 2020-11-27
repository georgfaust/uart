defmodule Porty.MixProject do
  use Mix.Project

  def project do
    [
      app: :uart,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      compilers: [:elixir_make] ++ Mix.compilers,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:elixir_make, "~> 0.4"}
    ]
  end
end