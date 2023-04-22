DATABASE_FILE=./instance/flaskr.sqlite
pip install -e . 

# Initialize SQLITE database file
if [[ ! -f "$DATABASE_FILE" ]]; then 
    echo "Creating $DATABASE_FILE." 
    flask --app flaskr init-db
fi

# Start the flaskr application
gunicorn --bind=0.0.0.0 --timeout 600 'flaskr:create_app()'