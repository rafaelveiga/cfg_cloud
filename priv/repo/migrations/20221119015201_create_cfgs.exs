defmodule CfgCloud.Repo.Migrations.CreateCfgs do
  use Ecto.Migration

  def change do
    create table(:cfgs) do
      add :title, :string
      add :contents, :text

      timestamps()
    end
  end
end
