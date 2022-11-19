defmodule CfgCloud.CFG.List do
  alias CfgCloud.{CFG, Repo}

  def call(id) do
    Repo.get(CFG, id)
  end
end
