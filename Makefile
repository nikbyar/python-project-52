install:
	poetry install


lint:
	poetry run flake8 task_manager
	poetry run isort task_manager


PORT ?= 8000
start:
	poetry run python manage.py runserver 0.0.0.0:$(PORT)