defmodule Hello.Users do
  import Hello.Repo

  def add(changeset) do
    insert(changeset, [])
  end
end
