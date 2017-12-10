defmodule EnumsFromAbsintheToEcto.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias EnumsFromAbsintheToEcto.{
    Order,
    OrderStatusEnum,
  }

  schema "orders" do
    field :status, OrderStatusEnum
    timestamps()
  end

  @doc false
  def changeset(%Order{} = order, attrs) do
    order
    |> cast(attrs, [])
    |> validate_required([])
  end
end
