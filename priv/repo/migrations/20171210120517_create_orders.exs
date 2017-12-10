defmodule EnumsFromAbsintheToEcto.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    EnumsFromAbsintheToEcto.OrderStatusEnum.create_type()
    create table(:orders) do
      add :status, :order_status
      timestamps()
    end

  end
end
