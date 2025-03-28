defmodule App.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string, size: 255
      add :description, :string
      add :total_amount, :float
      add :discount_amount, :float
      add :final_amount, :float

      timestamps(type: :utc_datetime)
    end
  end
end
