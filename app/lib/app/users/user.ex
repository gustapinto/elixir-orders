defmodule App.Users.User do
  use App.Schema
  import Ecto.Changeset

  schema "users" do
    field :login, :string
    field :password, :string
    field :role, :string

    timestamps(type: :utc_datetime)

    has_many :properties, App.Users.UserProperty
    has_many :orders, App.Orders.Order
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [])
    |> validate_required([])
  end
end
