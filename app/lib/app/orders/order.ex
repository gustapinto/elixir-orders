defmodule App.Orders.Order do
  use App.Schema
  import Ecto.Changeset

  schema "orders" do
    field :total_amount, :float
    field :discount_amount, :float
    field :final_amount, :float
    field :notes, :string

    timestamps(type: :utc_datetime)

    belongs_to :user, App.Users.User
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [])
    |> validate_required([])
  end
end
