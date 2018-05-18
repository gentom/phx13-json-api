defmodule Api13.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :is_active, :boolean, default: false
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password, :is_active])
    |> validate_required([:email, :password, :is_active])
    |> unique_constraint(:email)
  end
end
