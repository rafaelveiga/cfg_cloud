defmodule CfgCloud.Repo do
  use Ecto.Repo,
    otp_app: :cfg_cloud,
    adapter: Ecto.Adapters.Postgres
end
