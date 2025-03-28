defmodule App.Products.Product do
  use App.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :description, :string
    field :total_amount, :float
    field :discount_amount, :float
    field :final_amount, :float

    timestamps(type: :utc_datetime)

    has_many :properties, App.Products.ProductProperty
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [])
    |> validate_required([])
  end
end
