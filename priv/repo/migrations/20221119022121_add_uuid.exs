defmodule CfgCloud.Repo.Migrations.AddUUID do
  use Ecto.Migration

  def change do
    alter table(:cfgs) do
      remove :id
      add :id, :uuid, primary_key: true
    end
  end
end
