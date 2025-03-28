defmodule App.Repo.Migrations.CreateUserProperties do
  use Ecto.Migration

  def change do
    create table(:user_properties) do
      add :user_id, references(:users)
      add :property, :string, size: 100
      add :value, :string

      timestamps(type: :utc_datetime)
    end
  end
end
