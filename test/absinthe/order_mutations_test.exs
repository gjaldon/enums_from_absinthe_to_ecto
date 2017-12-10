defmodule EnumsFromAbsintheToEcto.OrderMutationsTest do
  use EnumsFromAbsintheToEcto.DataCase
  alias EnumsFromAbsintheToEcto.{
    Order,
    Schema,
  }

  test "adds order" do
    query = """
      mutation {
        addOrder(input: {
          status: PROCESSING
        }) {
          status
        }
      }
    """

    {:ok, %{data: data}} = query |> Absinthe.run(Schema)

    order = data["addOrder"]
    assert order["status"] == "PROCESSING"

    # How the enum looks when getting it through Ecto and not Absinthe
    [order] = Repo.all(Order)
    assert order.status == :processing
  end
end
