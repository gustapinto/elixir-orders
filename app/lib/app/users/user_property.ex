defmodule App.Users.UserProperty do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_properties" do
    field :property, :string
    field :value, :string

    timestamps(type: :utc_datetime)

    belongs_to :user, App.Users.User
  end

  @doc false
  def changeset(property, attrs) do
    property
    |> cast(attrs, [])
    |> validate_required([])
  end
end
