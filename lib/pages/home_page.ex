defmodule Blog.HomePage do
  use Tableau.Page,
    layout: Blog.RootLayout,
    permalink: "/"

  import Blog

  def template(assigns) do
    ~H"""
        <table>
          <thead>
          <tr>
            <th>Дата</th>
            <th>Ссылка</th>
          </tr>
          </thead>
          <tbody>
          <%= for post <- @posts do %>
            <%= if !Enum.member?(post["tags"] || [], "archive") do %>
          <tr>
            <td><time><%= Calendar.strftime(post.date, "%Y-%m-%d") %></time></td>
            <td><a href="<%= post.permalink %>"><%= post.title %></a></td>
          </tr>
            <% end %>
          <% end %>
          </tbody>
        </table>
    """
  end
end
