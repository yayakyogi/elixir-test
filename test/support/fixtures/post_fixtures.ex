defmodule UsersApi.PostFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `UsersApi.Post` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title",
        user_id: "some user_id"
      })
      |> UsersApi.Post.create_user()

    user
  end
end
