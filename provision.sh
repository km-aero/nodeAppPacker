sudo systemctl start nginx
unlink /etc/nginx/sites-enabled/default
sudo mv /home/ubuntu/reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo systemctl reload-or-restart nginx
cd /home/ubuntu/app
npm install
npm start &
