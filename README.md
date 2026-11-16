# Hot Hands Repacks

Static marketing site for Hot Hands Repacks (hothandsrepacks.com).

- `public/index.html`: home page (company, mission, buyers, products)
- `public/series-checklists/index.html`: Series Checklists
- `public/assets/site.css`: shared header/footer/button styles
- `Caddyfile` + `Dockerfile`: production server for Railway

The site is intentionally hidden from search engines: every page has
`<meta name="robots" content="noindex, nofollow, noarchive">` and Caddy sends an
`X-Robots-Tag` header on every response. There is deliberately **no**
`robots.txt` disallow rule, because blocking crawling would stop search engines
from seeing the noindex directive.

## Run locally

```bash
docker build -t hothandsrepacks . && docker run --rm -p 8080:8080 hothandsrepacks
```

Or without Docker: `python3 -m http.server -d public 8080`

## Deploy

Railway builds the `Dockerfile` (see `railway.json`). Railway sets `PORT`, and Caddy listens on it.
