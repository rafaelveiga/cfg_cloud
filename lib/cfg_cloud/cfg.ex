defmodule CfgCloud.CFG do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  schema "cfgs" do
    field :contents, :string
    field :title, :string
    belongs_to :user, CfgCloud.User, type: Ecto.UUID

    timestamps()
  end

  @doc false
  def changeset(cfg, attrs) do
    cfg
    |> cast(attrs, [:title, :contents])
    |> validate_required([:title, :contents])
  end
end
