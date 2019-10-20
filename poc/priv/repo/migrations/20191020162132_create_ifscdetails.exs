defmodule Poc.Repo.Migrations.CreateIfscdetails do
  use Ecto.Migration

  def change do
    create table(:ifscdetails) do
      add :ifsc, :string
      add :address, :string
      add :bank, :string
      add :branch, :string
      add :bankcode, :string
      add :centre, :string
      add :city, :string
      add :district, :string
      add :imps, :boolean, default: false, null: false
      add :micr, :string
      add :neft, :boolean, default: false, null: false
      add :rtgs, :boolean, default: false, null: false
      add :state, :string

      timestamps()
    end

  end
end
