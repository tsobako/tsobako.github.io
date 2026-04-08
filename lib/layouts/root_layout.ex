defmodule Blog.RootLayout do
  use Tableau.Layout
  import Blog

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>

    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          <%= @page[:title] %>
        </title>

        <link rel="stylesheet" href="/index.css" />
        <script src="/index.js"></script>
      </head>

      <body>
        <div>
          <header>
            <a href="/">Блог Игоря</a>
          </header>
        <main>
          <%= render @inner_content %>
        </main>
          <footer>
            <ul>
              <li><a href="mailto:social@tsobako.me">Почта</a></li>
              <li><a href="https://github.com/tsobako">Github</a></li>
              <li><a href="https://x.com/tsobako">X на русском</a></li>
              <li><a href="https://x.com/tsobako_en">X на английском</a></li>
            </ul>

          </footer>
        </div>
      </body>

      <%= if Mix.env() == :dev do %>
        <%= Tableau.live_reload(assigns) %>
      <% end %>
    </html>
    """
  end
end
