# CLAUDE.md

Sito professionale/accademico di Giuliano Langella (giulange.github.io), basato sul
tema [al-folio](https://github.com/alshedivat/al-folio) per Jekyll.

## Regola critica: deploy

Ogni push su `main` pubblica **immediatamente** il sito live: la GitHub Action
`.github/workflows/deploy.yml` builda e pubblica su `gh-pages`. Quindi:

- Non lavorare mai su `main`. Base di lavoro: `develop`.
- Ogni task va in un branch locale `feature/<slug>`, poi merge su `develop`.
- Merge `develop` → `main` = release = pubblicazione del sito: si fa solo
  insieme all'utente, mai in autonomia.

## Sviluppo locale

- `./compose-up.sh` — builda e avvia lo stack Docker in background (Jekyll con
  livereload); `./compose-down.sh` per fermarlo. Sito su http://localhost:8080.
- Esiste anche `docker-compose-slim.yml` per l'immagine slim.
- `bin/cibuild` e `bin/deploy` sono script del tema per CI/deploy manuale: non
  servono nel flusso normale (il deploy è via Actions).

## Struttura contenuti

- `_pages/` — pagine principali (about, projects, teaching, cv, …)
- `_projects/` — schede progetto (portfolio)
- `_news/` — annunci mostrati nella pagina about
- `_posts/` — blog
- `_books/` — bookshelf
- `_bibliography/papers.bib` — pubblicazioni (rese da jekyll-scholar)
- `_data/` — dati strutturati (cv, repositories, coauthors, …)
- `_config.yml` — configurazione centrale del sito e del tema
- `assets/` — immagini, PDF (incluso il CV), css/js

## Da non toccare

- `_site/` — output generato dalla build, mai editare a mano.
- `node_modules/`, `.jekyll-cache/` — artefatti locali.
- `_layouts/`, `_includes/`, `_sass/`, `_plugins/` sono codice del tema
  al-folio: modificarli solo se il task lo richiede esplicitamente, per non
  complicare futuri aggiornamenti del tema upstream.

## Formattazione

Prettier (con plugin Liquid) è configurato in pre-commit (`.pre-commit-config.yaml`,
`.prettierrc`): è normale che i file vengano riformattati al commit. Non
introdurre formattazioni in conflitto.

## Documentazione del tema

`CUSTOMIZE.md`, `INSTALL.md` e `FAQ.md` sono la documentazione upstream di
al-folio: consultarli prima di reinventare una feature (il tema copre già
pubblicazioni, repo GitHub, news, ecc. via configurazione).
