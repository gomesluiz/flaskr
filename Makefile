SHELL=/bin/bash

# Install required packages.
env: 
	python3 -m venv .venv 
	source .venv/bin/activate
	pip install -r requirements.txt
	
# Update requirements.txt file.
freeze:
	pip freeze >> requirements.txt

# Run flask application.
run: 
	flask --app flaskr run 

# Run flask application in debug mode.
debug: 
	flask --app flaskr run --debug
