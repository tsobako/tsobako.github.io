JEKYLL_ENV=production bundle exec jekyll build
rsync -avz --delete _site/ root@vm:/var/www/html/
