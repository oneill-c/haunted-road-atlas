# Haunted Road Atlas

**Haunted Road Atlas** is a story-driven map for discovering haunted locations. Browse eerie places on an interactive map, tap into preview cards, and dive into full story pages with photos, sources, and metadata. It’s built as an open-source monorepo with a web app first, then a React Native mobile app—sharing business logic across platforms.

> **Maps are powered by Mapbox** (Mapbox GL JS on web; Mapbox native SDK on mobile via a RN wrapper).

---

## Screenshots (coming soon)

### Web — Map + Preview Cards

![Web Map Page Placeholder](docs/images/web-map-placeholder.png)

---

## Product Highlights

- **Discoverable by design**

  - Browse by region and zoom level
  - Tap markers for instant preview cards
  - Jump from map → story → back to map context

- **Story-first details**

  - Dedicated location pages with narrative, images, tags, and sources
  - “View on map” actions to refocus the map on a location

- **Atmospheric presentation**

  - Dark-mode styling and custom map theme via Mapbox Studio
  - Custom marker icons (gravestone/bat) and hover/active states

- **Fast with real data**
  - Designed for 1k+ markers with bbox queries + clustering patterns

---

## MVP Feature Set

- Interactive map with haunted locations
- Preview cards on marker selection
- Filters (category multi-select, state/region selectors)
- Basic loading + error handling

---

## Mapbox (What You Need)

To get started with maps:

- **Web:** Mapbox GL JS (renders the map in `apps/web`)
- **Styles:** Mapbox Studio style URL (for the haunted dark theme)
- **Mobile (later):** Mapbox native SDK via a React Native wrapper

You’ll configure:

- `VITE_MAPBOX_ACCESS_TOKEN`
- `VITE_MAPBOX_STYLE_URL`

---

## Monorepo Overview

```
.
├─ apps/
│  ├─ web/               # React + TS + Vite (Mapbox GL JS)
│  └─ mobile/            # React Native + TS (planned; Mapbox native SDK)
├─ core/                 # Shared TS domain + api client + validation + tokens
├─ services/
│  └─ api/               # Go REST API + Postgres (+ PostGIS optional)
├─ infrastructure/       # Docker + deployment scripts
└─ package.json          # Yarn workspaces
```

---

## Getting Started (Local)

### Prerequisites

- Node.js (LTS recommended)
- Yarn
- Docker + Docker Compose (for API + DB)

### 1) Install dependencies (repo root)

```bash
yarn
```

### 2) Configure Web env vars

Create `apps/web/.env.local`:

```bash
VITE_MAPBOX_ACCESS_TOKEN=pk.your_token_here
VITE_MAPBOX_STYLE_URL=mapbox://styles/your-user/your-style-id
VITE_API_BASE_URL=http://localhost:8080
```

### 3) Start the backend + database (Docker)

```bash
docker compose -f infrastructure/docker/docker-compose.yml up -d
```

### 4) Run the web app

```bash
cd apps/web
yarn dev
```

---

## API (MVP)

Public endpoints:

- `GET /health`
- `GET /locations?bbox=west,south,east,north&categories=...&state=...&page=...&limit=...`
- `GET /locations/:id`

The UI uses bbox + filters to request only what’s visible on the map.

---

## Product Roadmap (High Level)

**Phase 1 — Web MVP**

- Map + clustering
- Preview card + story page
- Filters + shareable URLs

**Phase 2 — Content pipeline**

- Admin endpoints (create/update locations)
- Simple authoring UI or CMS integration

**Phase 3 — Mobile**

- Map + bottom sheet cards
- Detail screen parity with web
- Shared tokens + API client from `/core`

---

## License (MIT)
