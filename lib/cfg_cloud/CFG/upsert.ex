defmodule CfgCloud.CFG.Upsert do
  alias CfgCloud.{CFG, Repo}

  def call(attrs) do
    %CFG{}
    |> CFG.changeset(attrs)
    |> Repo.insert()
  end

  def call(%CFG{} = cfg, attrs) do
    cfg
    |> CFG.changeset(attrs)
    |> Repo.update()
  end
end
