defmodule Snowfall.Repo do
  use Ecto.Repo,
    otp_app: :snowfall,
    adapter: Ecto.Adapters.Postgres
end
