defmodule IsChinese.Mixfile do
  use Mix.Project

  def project do
    [app: :is_chinese,
     version: "1.0.0",
     elixir: "~> 1.2",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
  """
  Check whether string is Chinese
  """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["lidashuang"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/lidashuang/is_chinese"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end
end
