install:
	poetry install


lint:
	poetry run flake8 task_manager
	poetry run isort task_manager


start:
	poetry run python manage.py runserver