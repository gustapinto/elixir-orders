defmodule App.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :user_id, references(:users)
      add :total_amount, :float
      add :discount_amount, :float
      add :final_amount, :float
      add :notes, :string, size: 500

      timestamps(type: :utc_datetime)
    end
  end
end
