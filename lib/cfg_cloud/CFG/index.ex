defmodule CfgCloud.CFG.Index do
  alias CfgCloud.{CFG, Repo}

  def call() do
    Repo.all(CFG)
  end
end
