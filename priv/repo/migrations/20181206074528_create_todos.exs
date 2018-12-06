defmodule Me.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :name, :string
      add :status, :boolean, default: false, null: false
      add :done_at, :naive_datetime

      timestamps()
    end

  end
end
