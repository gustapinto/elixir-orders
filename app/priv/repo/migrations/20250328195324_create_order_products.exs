defmodule App.Repo.Migrations.CreateOrderProducts do
  use Ecto.Migration

  def change do
    create table(:order_products) do
      add :order_id, references(:orders)
      add :product_id, references(:products)

      timestamps(type: :utc_datetime)
    end
  end
end
