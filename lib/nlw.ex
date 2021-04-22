defmodule Nlw do

  alias Nlw.Restaurants
  alias Nlw.Supplies

  defdelegate create_restaurant(params), to: Restaurants.Create,  as: :call
  defdelegate create_supply(params), to: Supplies.Create,  as: :call
  defdelegate get_supply(params), to: Supplies.Get,  as: :call
end
