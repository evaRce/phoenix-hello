defmodule HelloWeb.RegistrationHTML do
  use HelloWeb, :html
  import HelloWeb.Router.Helpers

  embed_templates "registration_html/*"
end
