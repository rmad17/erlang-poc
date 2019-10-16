defmodule Hello.Application do
  use Application
  def start(_type, _args) do

    children = [
      HelloWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Hello.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
