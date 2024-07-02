# Flaskr

Flaskr is a simple blog application built using Flask, a lightweight web framework for Python. This project demonstrates the use of Flask for building web applications, following best practices for structuring a Flask project, handling routes, managing templates, and interacting with a SQLite database.

## Table of Contents

- [Flaskr 1.0](#flaskr-10)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Configuration](#configuration)
  - [Testing](#testing)
  - [Contributing](#contributing)
  - [License](#license)
  - [Acknowledgements](#acknowledgements)

## Features

- User authentication (registration and login)
- Create, edit, delete, and view blog posts
- Database integration with SQLite
- Templating with Jinja2
- Unit testing with pytest

## Requirements

- Python 3.6 or higher
- Flask 2.0.1 or higher
- SQLite 3.32 or higher

## Installation

To get started with Flaskr, clone the repository and set up the environment:

```bash
git clone https://github.com/gomesluiz/flaskr.git
cd flaskr
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Usage

To run the application locally, use the following commands:

1. Initialize the database:
    ```bash
    flask init-db
    ```

2. Start the development server:
    ```bash
    flask run
    ```

By default, the application will be available at `http://127.0.0.1:5000`.

## Configuration

Flaskr uses a configuration file for settings. You can modify the `config.py` file to change the configuration settings, such as the database path or debug mode.

### Example configuration (`config.py`):

```python
import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'your_secret_key'
    DATABASE = os.path.join(os.getcwd(), 'flaskr.sqlite')
```

## Testing

To run the tests for Flaskr, use the following command:

```bash
pytest
```

Make sure to have `pytest` installed in your virtual environment.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

Please ensure your code follows the project's coding standards and includes relevant tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- Flask framework: https://flask.palletsprojects.com/
- Bootstrap: https://getbootstrap.com/
- SQLite: https://www.sqlite.org/

For more detailed documentation and usage examples, please refer to the [official documentation](https://github.com/gomesluiz/flaskr).
