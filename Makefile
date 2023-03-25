SHELL=/bin/bash

deps: ## install required packages.
deps: 
	@echo "Installing package dependencies."
	@python3 -m pip install --upgrade pip
	@pip install black coverage flake8 mypy pylint pytest tox
	@pip install -r requirements.txt

freeze: ## update requirements.txt file.
freeze:
	pip freeze > requirements.txt

# Run flask application.
run: 
	flask --app flaskr run 

# Run flask application in debug mode.
debug: 
	flask --app flaskr run --debug

lint: 
	flake8 flaskr

test: lint
	pytest -ra

push:
	git push && git push --tags
