defmodule Me.Todo do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:id, :binary_id, autogenerate: true}
  schema "todos" do
    field :done_at, :naive_datetime
    field :name, :string
    field :status, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:name, :status, :done_at])
    |> validate_required([:name, :status, :done_at])
  end
end
