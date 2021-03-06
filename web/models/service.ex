defmodule KindynowQkNew.Service do
  use KindynowQkNew.Web, :model

  schema "services" do
    field :name, :string
    field :qk_service_id, :string
    field :email, :string
    field :phone_number, :string
    field :time_zone, :string
    field :licensed_capacity, :string
    field :street, :string
    field :suburb, :string
    field :state, :string
    field :post_code, :string

    has_many :rooms, KindynowQkNew.Room
    # has_many :service_addresses, KindynowQkNew.ServiceAddress
    # has_many :addresses, through: [:address_services, :address]

    timestamps
  end

  @required_fields ~w(qk_service_id name)
  @optional_fields ~w(email phone_number licensed_capacity time_zone suburb street suburb state post_code state post_code)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
