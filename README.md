# Caddy Docker image
A Docker image for testing with Caddy. Please make sure you're correctly licensed.

## Usage
1. Create an empty folder (e.g. `caddyfrontend`)
2. Add your `Caddyfile`
3. Create a new `Dockerfile` with following content:
    FROM awesomevibes1/caddy:latest
    COPY Caddyfile /var/www/caddy
4. Build: `docker build . -t caddyfrontend`
5. Run:  `docker run -t -p 2015:2015 caddyfrontend`