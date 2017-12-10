defmodule EnumsFromAbsintheToEcto.OrderResolver do
  alias EnumsFromAbsintheToEcto.{
    Orders,
  }

  def find(_parent, %{id: id}, _info) do
    {:ok, Orders.get!(id)}
  end
end
