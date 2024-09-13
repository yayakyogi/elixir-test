defmodule UsersApi.Repo.Migrations.AddUserIdToPost do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :user_id, references(:users, on_delete: :nothing)
    end
  end
end
