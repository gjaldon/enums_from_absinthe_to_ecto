defmodule EnumsFromAbsintheToEcto.OrderResolver do
  alias EnumsFromAbsintheToEcto.{
    Orders,
  }

  def find(_parent, %{id: id}, _info) do
    {:ok, Orders.get!(id)}
  end

  def add_order(_parent, %{input: input}, _info) do
    Orders.create_order(input)
  end
end
