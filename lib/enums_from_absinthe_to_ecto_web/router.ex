defmodule EnumsFromAbsintheToEctoWeb.Router do
  use EnumsFromAbsintheToEctoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EnumsFromAbsintheToEctoWeb do
    pipe_through :api
  end
end
