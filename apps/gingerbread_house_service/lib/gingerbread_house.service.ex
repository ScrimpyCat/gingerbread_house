defmodule GingerbreadHouse.Service do
    @moduledoc false

    use Application

    def start(_type, _args) do
        import Supervisor.Spec, warn: false

        children = [
            GingerbreadHouse.Service.Repo,
            GingerbreadHouse.Service.Business
        ]

        opts = [strategy: :one_for_one, name: GingerbreadHouse.Service.Supervisor]
        Supervisor.start_link(children, opts)
    end
end
