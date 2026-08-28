# Portafolio — [TU NOMBRE]

One-pager estático (HTML + CSS + JS, sin build step) que presenta proyectos web y un
sistema de IA en producción (WhatsApp + n8n + Chatwoot).

## Local

Abrir `index.html` con doble clic, o servirlo:

```bash
python3 -m http.server 8080
```

## Deploy

Contenedor nginx. En Coolify: Build Pack `Dockerfile`, puerto expuesto `80`.
Cada `git push` a `main` redespliega.

```bash
docker build -t portafolio .
docker run -d --name portafolio-test -p 8099:80 portafolio
```
