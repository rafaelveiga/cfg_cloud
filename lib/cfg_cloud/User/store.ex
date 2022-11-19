defmodule CfgCloud.User.Store do
  alias CfgCloud.{Repo, User}

  def index() do
    Repo.all(User)
  end

  def show(id) do
    Repo.get(User, id)
  end

  def delete(%User{} = user) do
    Repo.delete(user)
  end

  def create(user_attrs) do
    %User{}
    |> User.changeset(user_attrs)
    |> Repo.insert()
  end

  def update(%User{} = user, user_attrs) do
    user
    |> User.changeset(user_attrs)
    |> Repo.update()
  end
end
