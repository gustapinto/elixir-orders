defmodule App.Products.ProductProperty do
  use App.Schema
  import Ecto.Changeset

  schema "product_properties" do
    field :property, :string
    field :value, :string

    timestamps(type: :utc_datetime)

    belongs_to :product, App.Products.Product
  end

  @doc false
  def changeset(product_property, attrs) do
    product_property
    |> cast(attrs, [])
    |> validate_required([])
  end
end
