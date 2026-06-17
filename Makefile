.PHONY: test tests deploy check teardown docs-build docs-serve

test tests:
	python3 -m pytest -q

deploy:
	bash scripts/deploy.sh

check:
	bash scripts/check_registration.sh

teardown:
	bash scripts/teardown.sh

docs-build:
	python3 -m mkdocs build --strict

docs-serve:
	python3 -m mkdocs serve
