defmodule LoggerLogstashBackend.Mixfile do
  use Mix.Project

  def project do
    [
      app: :prima_logger_logstash_backend,
      name: "prima_logger_logstash_backend",
      source_url: "https://github.com/primait/logger_logstash_backend",
      version: "1.1.0",
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger, :timex]]
  end

  defp deps do
    [
      {:earmark, "~> 1.3", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev},
      {:jason, "~> 1.1"},
      {:timex, "~> 3.6"}
    ]
  end

  defp description do
    """
    Logstash UDP producer backend for Logger.
    Forked from marcelog/prima_logger_logstash_backend that was abandoned.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Omar Greggio"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/primait/logger_logstash_backend"
      }
    ]
  end
end
