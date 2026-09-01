# Ponytail Makefile — boring, correct, 5 lines you actually use
.PHONY: help serve dev count

help: ## show this
	@grep -E '^[a-z]+:.*##' $(MAKEFILE_LIST) | sed 's/:.*##/ — /'

serve: ## build + serve on :3000 (nginx)
	docker build -t prompts .
	docker run --rm -p 3000:80 prompts

dev: ## dev server on :8000 with live volume
	docker compose --profile dev up prompts-dev

count: ## count prompts
	@find Prompts -name "*.md" | wc -l | xargs echo "prompts:"
	@ls -1 Prompts/*/*.md | wc -l
