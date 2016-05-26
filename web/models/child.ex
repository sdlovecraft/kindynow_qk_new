defmodule KindynowQkNew.Child do
  use KindynowQkNew.Web, :model

  schema "children" do
    field :first_name, :string
    field :last_name, :string
    field :qk_child_id, :string
    field :dob, Ecto.Date
    field :sync_id, :string
    belongs_to :family, KindynowQkNew.Family

    timestamps
  end

  @required_fields ~w(qk_child_id first_name last_name sync_id)
  @optional_fields ~w(dob)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> unique_constraint(:qk_family_id)
  end
end