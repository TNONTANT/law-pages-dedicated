.PHONY: help dev build deploy preview clean check

# Default — show available targets
help:
	@echo "law-pages-dedicated — make targets"
	@echo ""
	@echo "  make dev       Run Hugo dev server at http://localhost:1313 (live reload)"
	@echo "  make build     Build static site to ./public/ (production)"
	@echo "  make deploy    Build + deploy to Firebase Hosting (live channel)"
	@echo "  make preview   Build + deploy to Firebase preview channel (7-day expiry)"
	@echo "  make check     Verify deployed URLs return 200"
	@echo "  make clean     Remove build artifacts"

dev:
	hugo server --buildDrafts --disableFastRender

build:
	hugo --minify --gc

deploy: build
	firebase deploy --only hosting

preview: build
	firebase hosting:channel:deploy preview --expires 7d

check:
	@HOST=$$(firebase hosting:sites:list 2>/dev/null | awk '/snapcal-law/ {print $$2; exit}'); \
	  HOST=$${HOST:-snapcal-law.web.app}; \
	  echo "Checking https://$$HOST ..."; \
	  for path in /privacy /terms /disclaimer /en/privacy /en/terms /en/disclaimer; do \
	    code=$$(curl -s -o /dev/null -w "%{http_code}" "https://$$HOST$$path"); \
	    printf "  %-22s → %s\n" "$$path" "$$code"; \
	  done

clean:
	rm -rf public resources .hugo_build.lock
