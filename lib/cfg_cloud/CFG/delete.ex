defmodule CfgCloud.CFG.Delete do
  alias CfgCloud.{CFG, Repo}

  def call(%CFG{} = cfg) do
    Repo.delete(cfg)
  end
end
