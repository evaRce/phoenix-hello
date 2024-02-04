defmodule HelloWeb.RegistrationHTML do
  use HelloWeb, :html
  import HelloWeb.Router.Helpers
  import Phoenix.HTML.Tag
  alias Phoenix.HTML.Form

  embed_templates "registration_html/*"
end
