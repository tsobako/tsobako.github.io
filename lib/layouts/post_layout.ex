defmodule Blog.PostLayout do
  use Tableau.Layout, layout: Blog.RootLayout
  import Blog

  def template(assigns) do
    ~H"""
    <article>
    <h1><%= @page[:title] %></h1>
    <%= render @inner_content %>
    </article>
    """
  end
end
