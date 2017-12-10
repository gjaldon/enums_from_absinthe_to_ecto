defmodule EnumsFromAbsintheToEcto.Schema do
  @moduledoc """
  The schema for our graphql endpoint.
  """

  use Absinthe.Schema

  enum :order_status do
    value :processing
    value :in_transit
    value :fulfilled
  end

  object :order do
    field :status, :order_status
  end
end
