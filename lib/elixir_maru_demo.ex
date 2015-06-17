defmodule ElixirMaruDemo do
  use Maru.Router
  plug Plug.Logger

  namespace :key do
    params do
      requires :code, type: String
    end
    get ":code" do
      %{code: params[:code]} |> json(200)
    end
  end
end
