defmodule EnumsFromAbsintheToEcto.Orders do
  alias EnumsFromAbsintheToEcto.{
    Repo,
    Order,
  }

  def get!(id), do: Repo.get!(Order, id)
end
