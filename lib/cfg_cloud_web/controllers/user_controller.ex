defmodule CfgCloudWeb.UserController do
  use CfgCloudWeb, :controller

  alias CfgCloud.User

  def show(conn, %{"id" => id}) do
    user = User.Store.show(id)

    render(conn, "create.json", user: user)
  end
end
