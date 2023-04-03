SHELL=/bin/bash
APP=flaskr

env: ## make virtual environment
env: 
	@echo "Creating virtual environment..."
	@python3 -m venv .venv 

deps: ## install required packages.
deps: 
	@echo "Installing package dependencies..."
	@python3 -m pip install --upgrade pip
	@pip install black coverage flake8 mypy pylint pytest tox
	@pip install -r requirements.txt

freeze: ## update requirements.txt file.
freeze:
	@echo "Freezing package dependencies..."
	pip freeze > requirements.txt

run: # Run flask application.
run: 
	@echo "Running flask application..."
	@flask --app $(APP) run 

debug: # Run flask application in debug mode.
debug:
	@echo "Running flask application in debug mode..."
	@flask --app $(APP) run --debug

db: # Init database.
db:
	@echo "Initing database..."
	@flask --app $(APP) init-db

lint: # Lint flask application in debug mode.
lint: 
	@flake8 $(APP)

test: # Test flask application.
test: lint
	@pytest -ra tests/

push: # Push application for gihub repository.
push:
	@git push && git push --tags
