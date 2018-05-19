defmodule Api13Web.Router do
  use Api13Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Api13Web do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
