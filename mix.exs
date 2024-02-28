defmodule ACC.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :acc,
      version: "0.6.0",
      elixir: "~> 1.7",
      description: "ACC Account Management",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :acc,
      links: %{"GitHub" => "https://github.com/erpuno/acc"}
    ]
  end

  def application() do
    [mod: {:acc, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:bpe, "7.10.4"}
    ]
  end
end
