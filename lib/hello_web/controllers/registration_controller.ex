defmodule HelloWeb.RegistrationController do
  use HelloWeb, :controller
  alias Hello.User
  alias Hello.Users

  def load(conn, _args) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :register, changeset: User.changeset(%{}))
  end

  def register(conn, args) do
    user =
      args["user"]
      |> User.validation()

    case user.valid? do
      true ->
        case Users.add(user) do
          {:ok, _} -> render(conn, :hello)
          {:error, error_changeset} -> render(conn, :register, changeset: error_changeset)
        end

      _ ->
        invalid_user = Map.put(user, :action, :validate)
        render(conn, :register, changeset: invalid_user)
    end
  end
end
