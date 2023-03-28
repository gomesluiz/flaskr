SHELL=/bin/bash
APP=flaskr

deps: ## install required packages.
deps: 
	@echo "Installing package dependencies."
	@python3 -m pip install --upgrade pip
	@pip install black coverage flake8 mypy pylint pytest tox
	@pip install -r requirements.txt

freeze: ## update requirements.txt file.
freeze:
	@echo "Freezing package dependencies."
	pip freeze > requirements.txt

# Run flask application.
run: 
	flask --app $(APP) run 

# Run flask application in debug mode.
debug: 
	flask --app $(APP) run --debug

lint: 
	flake8 $(APP)

test: lint
	pytest -ra

push:
	git push && git push --tags
