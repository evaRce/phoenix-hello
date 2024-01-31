defmodule HelloWeb.RegistrationController do
  use HelloWeb, :controller
  alias Hello.User

  def load(conn, _args) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :register, changeset: User.changeset(%{}) )
  end

  def register(conn, args) do
    IO.inspect(args)
    case (User.validation(args["user"])).valid? do
      true -> render(conn, :register, changeset: User.changeset(args) )
      _ -> render(conn, :hello)
    end

  end
end
