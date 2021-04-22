defmodule NlwWeb.RestaurantsController do
  use NlwWeb, :controller

  alias Nlw.Restaurant
  alias NlwWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Nlw.create_restaurant(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
