# dunyanong.github.io

Personal site of Dun Yan Ong: research, competitions, industry work and project write-ups.
Built with Jekyll and the [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) theme, deployed to GitHub Pages
by `.github/workflows/pages-deploy.yml` on every push to `master`.

## Where things live

| Path | What it holds |
|---|---|
| `_data/news.yml` | Dated one-liners in the News section of the home page |
| `_data/experience.yml` | Research, leadership, software and education entries, plus the skills list |
| `_data/publications.yml` | Papers shown on the home page |
| `_data/projects.yml` | Project cards, grouped by theme; `featured: true` also puts a card on the home page |
| `_data/redirects.yml` | Old URLs and where they now point (built by `_plugins/redirect-generator.rb`) |
| `_posts/` | Project write-ups, one Markdown file per project |
| `index.html` | Home page layout (renders the data files above) |
| `_tabs/` | Sidebar pages: Projects, Experience, Writing |
| `_includes/` | Shared cards: project, experience entry, publication, and extra SEO metadata |
| `_layouts/home.html` | Replaces Chirpy's post-list home page with the landing page |
| `assets/img/projects/<topic>/` | Images for each project; `assets/img/og/` holds 1200×630 share images |
| `assets/files/` | The CV PDF |

## Run and test locally

```bash
bundle install
bash tools/run.sh      # serve at http://127.0.0.1:4000 with live reload
bash tools/test.sh     # production build + link check (same check as CI)
```

## Add a project

1. Add images under `assets/img/projects/<topic>/`.
2. Write `_posts/YYYY-MM-DD-<slug>.md` with `title`, `description` (under 160 characters), `date`,
   `categories` (one of Research, Competitions, Industry, Projects), `tags` and `image`.
   The page is served at `/posts/<slug>/`.
3. Add a card to `_data/projects.yml` with `post: /posts/<slug>/`.

## License

Site code is MIT-licensed; writing and images are CC BY 4.0. See [LICENSE](LICENSE).
