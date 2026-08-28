# Portafolio — Fausto Recalde

One-pager estático (HTML + CSS + JS inline, sin build step) que presenta proyectos web,
una app propia en Google Play y un sistema de IA en producción (WhatsApp + n8n + Chatwoot).

## Local

Abrir `index.html` con doble clic, o servirlo:

```bash
python3 -m http.server 8080
```

## Probar el contenedor

```bash
docker build -t portafolio . && docker run -d --name porta-test -p 8099:80 portafolio
```

Debe devolver `200` en `/`, en `/assets/salon.jpg` y en `/assets/app-icon.webp`.
Limpieza: `docker rm -f porta-test`.

## Deploy en Coolify

- Build Pack: `Dockerfile`
- Base Directory: `/`
- Ports Exposes: `80`
- HTTP Basic Authentication de Coolify: **desactivado** (el sitio es público)

El registro DNS **A** del subdominio debe resolver a la IP del VPS *antes* del primer deploy,
o Traefik falla al emitir el certificado. Cada `git push` a `main` redespliega.

## Dónde editar

Todo está en `index.html`, marcado con comentarios `EDITAR:`
— datos de contacto, contexto de cada proyecto, datos de la app, URL del CRM y los mensajes
de la conversación animada de WhatsApp.
