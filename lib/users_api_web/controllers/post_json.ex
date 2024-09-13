defmodule UsersApiWeb.PostJSON do
  alias UsersApi.Posts.Post

  @doc """
  Renders a list of post.
  """
  def index(%{post: post}) do
    %{posts: for(post <- post, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{post: data(post)}
  end

  def data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title,
      user_id: post.user_id,
    }
  end
end
