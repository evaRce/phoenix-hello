defmodule HelloWeb.RegistrationController do
  use HelloWeb, :controller

  def register(conn, %{"name" => name, "surname" => surname, "age" => age}) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :register, name: name, surname: surname, age: age)
  end
end
