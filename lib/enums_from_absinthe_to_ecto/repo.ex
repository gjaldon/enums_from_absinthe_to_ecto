defmodule EnumsFromAbsintheToEcto.Repo do
  use Ecto.Repo, otp_app: :enums_from_absinthe_to_ecto

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
