defmodule HelloWeb.RegistrationHTML do
  use HelloWeb, :html
  import HelloWeb.Router.Helpers
  import Phoenix.HTML.Tag
  alias Phoenix.HTML.Form

  embed_templates "registration_html/*"

  def error_tag(field, %Form{source: %Ecto.Changeset{errors: errors, valid?: false} = changeset}) do
    IO.inspect(changeset)

    case Keyword.get(errors, field) do
      nil -> content_tag(:span, "Nice", class: "block mt-1 text-sm text-green-700")
      {error_msg, _} -> content_tag(:span, error_msg, class: "block mt-1 text-sm text-red-700")
    end
  end

  def error_tag(_field, _form) do
  end
end
