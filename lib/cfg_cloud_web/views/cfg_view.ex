defmodule CfgCloudWeb.CfgView do
  use CfgCloudWeb, :view

  alias CfgCloudWeb.CfgView

  def render("index.json", %{cfgs: cfgs}) do
    %{data: render_many(cfgs, CfgView, "cfg.json")}
  end

  def render("create.json", %{cfg: cfg}) do
    %{data: render_one(cfg, CfgView, "cfg.json")}
  end

  def render("cfg.json", %{cfg: cfg}) do
    IO.inspect(cfg)

    %{
      id: cfg.id,
      title: cfg.title,
      contents: cfg.contents,
      updated_at: cfg.updated_at,
      inserted_at: cfg.inserted_at
    }
  end
end
