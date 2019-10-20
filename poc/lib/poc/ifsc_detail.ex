defmodule Poc.IfscDetail do
  use Ecto.Schema
  import Ecto.Changeset

  schema "ifscdetails" do
    field :address, :string
    field :bank, :string
    field :bankcode, :string
    field :branch, :string
    field :centre, :string
    field :city, :string
    field :district, :string
    field :ifsc, :string
    field :imps, :boolean, default: false
    field :micr, :string
    field :neft, :boolean, default: false
    field :rtgs, :boolean, default: false
    field :state, :string

    timestamps()
  end

  @doc false
  def changeset(ifsc_detail, attrs) do
    ifsc_detail
    |> cast(attrs, [:ifsc, :address, :bank, :branch, :bankcode, :centre, :city, :district, :imps, :micr, :neft, :rtgs, :state])
    |> validate_required([:ifsc, :address, :bank, :branch, :bankcode, :centre, :city, :district, :imps, :micr, :neft, :rtgs, :state])
    |> unique_constraint(:ifsc)
  end
end
