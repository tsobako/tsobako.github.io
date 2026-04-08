MIX_ENV=prod mix build
rsync -avz --delete _site/* root@vm:/var/www/blog.tsobako.me/
