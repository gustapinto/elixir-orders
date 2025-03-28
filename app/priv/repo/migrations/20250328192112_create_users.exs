defmodule App.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string, size: 100
      add :password, :string, size: 255
      add :role, :string, size: 50

      timestamps(type: :utc_datetime)
    end
  end
end
