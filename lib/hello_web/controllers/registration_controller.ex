defmodule HelloWeb.RegistrationController do
  use HelloWeb, :controller
  alias Hello.User

  def load(conn, _args) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :register, changeset: User.changeset(%{}))
  end

  def register(conn, args) do
    user = User.validation(args["user"])

    case user.valid? do
      true -> render(conn, :hello)
      _ -> render(conn, :register, changeset: user)
    end
  end
end
