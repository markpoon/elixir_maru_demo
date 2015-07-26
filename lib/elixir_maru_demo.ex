require IEx

defmodule ElixirMaruDemo do
  use Maru.Router
  plug Plug.Logger
  use Exredis

  namespace :key do
    route_param :key do
      get do
        start
          |> query(["GET", params[:key]])
          |> text(200)
      end

      params do
        requires :value, type: String
      end
      post do
        start
          |> query(["SET", params[:key], params[:value]])
          |> text(200)
      end
    end
  end

  def error(conn, e) do
    "server error" |> text(500)
  end
  def main(args) do
    :timer.sleep(:infinity)
  end
end
