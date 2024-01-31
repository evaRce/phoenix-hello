defmodule Hello.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :crypted_password, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(args) do
    %Hello.User{}
    |> cast(args, [:email, :crypted_password])
  end

  def validation(args) do
    args
    |> changeset()
    |> validate_required([:email, :crypted_password])
    |> unique_constraint(:email)
  end
end
