defmodule CfgCloud.Repo.Migrations.CfgBelongsToUser do
  use Ecto.Migration

  def change do
    alter table(:cfgs) do
      add :user_id, references(:users, type: :uuid)
    end
  end
end
