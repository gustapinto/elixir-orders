defmodule App.Repo.Migrations.CreateProductProperties do
  use Ecto.Migration

  def change do
    create table(:product_properties) do
      add :product_id, references(:products)
      add :property, :string, size: 100
      add :value, :string

      timestamps(type: :utc_datetime)
    end
  end
end
