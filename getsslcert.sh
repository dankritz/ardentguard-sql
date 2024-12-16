docker run --rm -p 80:80 -v ./letsencrypt:/etc/letsencrypt certbot/certbot certonly \
  --standalone -d sql1.ardentguard.com \
  --non-interactive --agree-tos -m dankritzinger@protonmail.com

