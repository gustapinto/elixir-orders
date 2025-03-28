defmodule App.Orders.OrderProduct do
  use App.Schema
  import Ecto.Changeset

  schema "order_products" do
    timestamps(type: :utc_datetime)

    belongs_to :order, App.Orders.Order
    belongs_to :product, App.Products.Product
  end

  @doc false
  def changeset(order_product, attrs) do
    order_product
    |> cast(attrs, [])
    |> validate_required([])
  end
end
