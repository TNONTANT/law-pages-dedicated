# law-pages-dedicated

> Public legal pages for **SnapCal**: Privacy Policy, Terms of Service, Health Disclaimer
> Canonical source of truth — referenced by go-backend consent LIFF (NUR-242) and by `cal-coach-knowledge/BusinessOS/law-pdpa/`

**Live:** https://nuri-492815.web.app (custom domain TBD — will swap once `snapcal.app` is registered)

---

## Stack

- **Hugo** (static site generator) — bilingual TH/EN
- **Firebase Hosting** — auto-deploy via GitHub Actions on push to `main`
- **Markdown** content in `content/{th,en}/`

## Quick start

```bash
# install hugo (macOS)
brew install hugo

# local preview
hugo server -D
# → http://localhost:1313

# production build
hugo --minify --gc
# output → ./public/

# manual deploy (CI does this automatically on push)
firebase deploy --only hosting
```

## Edit a policy

1. Edit MD file in `content/th/{privacy,terms,disclaimer}.md` (and EN counterpart)
2. Bump `last_updated` + version in `hugo.toml` `[params]`
3. Commit + push to `main` → CI deploys within ~3 min
4. **If scope changes** (new processor, new data category, retention change): also bump `store.ConsentVersion` in go-backend (NUR-242 spec) — atomic with snapshot folder in `cal-coach-knowledge/BusinessOS/law-pdpa/consent-snapshots/<new-version>/`

## URL contract (do not change without coordination)

LIFF consent footer links to these — breaking them = 404 on PDPA disclosure = ม.23 issue.

| Doc | TH | EN |
|-----|-----|-----|
| Privacy Policy | `/privacy` | `/en/privacy` |
| Terms of Service | `/terms` | `/en/terms` |
| Health Disclaimer | `/disclaimer` | `/en/disclaimer` |

Domain swap (e.g. `snapcal.app`) → set up 301 redirect in Firebase Hosting; old URLs in historical audit rows must still resolve.

## Repo layout

```
.
├── hugo.toml                    # config + versions + i18n
├── i18n/{th,en}.toml            # translation strings
├── content/
│   ├── th/{_index,privacy,terms,disclaimer}.md
│   └── en/{_index,privacy,terms,disclaimer}.md
├── layouts/
│   ├── _default/{baseof,single,list}.html
│   └── partials/{header,footer}.html
├── static/
│   └── css/style.css            # SnapCal design tokens
├── firebase.json
├── .firebaserc
└── .github/workflows/deploy.yml
```

## Related

- Implementation spec: `cal-coach-knowledge/BusinessOS/product/cards/NUR-241.md`
- Consent UI footer (downstream): `cal-coach-knowledge/BusinessOS/product/cards/NUR-242.md`
- Brain/strategy notes: `cal-coach-knowledge/BusinessOS/law-pdpa/`
- Consent snapshots / audit anchors: `cal-coach-knowledge/BusinessOS/law-pdpa/consent-snapshots/`
