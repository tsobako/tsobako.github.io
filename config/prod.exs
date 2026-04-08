import Config

config :tableau, :config, url: "https://blog.tsobako.me"
config :tableau, Tableau.PostExtension, future: false, dir: ["_posts"]
config :tableau, Tableau.PageExtension, dir: ["_pages"]
