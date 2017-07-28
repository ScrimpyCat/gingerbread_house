defmodule GingerbreadHouse.Service.Repo do
    use Ecto.Repo, otp_app: :gingerbread_house_service

    def child_spec(_args) do
        %{
            id: __MODULE__,
            start: { __MODULE__, :start_link, [] },
            type: :supervisor
        }
    end
end
