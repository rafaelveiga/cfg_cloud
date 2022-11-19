defmodule CfgCloudWeb.CfgController do
  use CfgCloudWeb, :controller

  alias CfgCloud.CFG

  def index(conn, _params) do
    cfgs = CFG.Index.call()
    render(conn, "index.json", cfgs: cfgs)
  end

  def create(conn, params) do
    {:ok, new_cfg} = CFG.Upsert.call(params)

    render(conn, "create.json", cfg: new_cfg)
  end

  def update(conn, cfg) do
    existing_cfg = CFG.List.call(cfg["id"])

    {:ok, updated_cfg} = CFG.Upsert.call(existing_cfg, cfg)

    render(conn, "create.json", cfg: updated_cfg)
  end

  def delete(conn, %{"id" => id}) do
    cfg_to_be_deleted = CFG.List.call(id)

    {:ok, deleted_cfg} = CFG.Delete.call(cfg_to_be_deleted)

    render(conn, "create.json", cfg: deleted_cfg)
  end

  def show(conn, %{"id" => id}) do
    cfg = CFG.List.call(id)

    render(conn, "create.json", cfg: cfg)
  end
end
