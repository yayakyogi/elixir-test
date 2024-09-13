defmodule UsersApiWeb.UserJSON do
  alias UsersApi.Accounts.User
  alias UsersApi.Posts.Post
  alias UsersApiWeb.PostJSON

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{users: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{user: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      role: user.role,
      address: user.address,
      posts: Enum.map(user.posts, &PostJSON.data/1)
    }
  end

  # defp post_data(%Post{} = post) do
  #   %{
  #     id: post.id,
  #     title: post.title,
  #     body: post.body
  #   }
  # end
end
