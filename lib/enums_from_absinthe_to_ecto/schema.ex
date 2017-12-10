defmodule EnumsFromAbsintheToEcto.Schema do
  @moduledoc """
  The schema for our graphql endpoint.
  """

  use Absinthe.Schema
  alias EnumsFromAbsintheToEcto.OrderResolver

  enum :order_status do
    value :processing
    value :in_transit
    value :fulfilled
  end

  object :order do
    field :status, :order_status
  end

  query do
    field :order, :order do
      resolve &OrderResolver.find/3
    end
  end

  input_object :add_order_input do
    field :status, :order_status
  end

  mutation do
    field :add_order, :order do
      arg :input, :add_order_input
      resolve &OrderResolver.add_order/3
    end
  end
end
