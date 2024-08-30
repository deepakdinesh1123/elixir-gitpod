defmodule Snowfall.Gists.Gist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gists" do
    field :description, :string
    field :markup_text, :string
    field :name, :string
    belongs_to :user, Snowfall.Accounts.User
    has_many :commets, Snowfall.Comments.Comment

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(gist, attrs) do
    gist
    |> cast(attrs, [:name, :description, :markup_text, :user_id])
    |> validate_required([:name, :description, :markup_text, :user_id])
  end
end
