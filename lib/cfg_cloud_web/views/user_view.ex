defmodule CfgCloudWeb.UserView do
  use CfgCloudWeb, :view

  alias CfgCloudWeb.UserView

  def render("index.json", %{cfgs: cfgs}) do
    %{data: render_many(cfgs, UserView, "user.json")}
  end

  def render("create.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    IO.inspect(user)

    %{
      id: user.id,
      cfgs:
        Enum.map(
          user.cfgs,
          fn %{
               id: id,
               inserted_at: inserted_at,
               title: title,
               contents: contents,
               updated_at: updated_at
             } ->
            %{
              id: id,
              inserted_at: inserted_at,
              title: title,
              contents: contents,
              updated_at: updated_at
            }
          end
        ),
      email: user.email,
      name: user.name,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end
end
