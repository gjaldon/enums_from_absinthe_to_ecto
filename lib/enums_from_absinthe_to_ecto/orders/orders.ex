defmodule EnumsFromAbsintheToEcto.Orders do
  alias EnumsFromAbsintheToEcto.{
    Repo,
    Order,
  }

  def get!(id), do: Repo.get!(Order, id)

  def create_order(args) do
    %Order{}
    |> Order.unit_changeset(args)
    |> Repo.insert()
  end
end
