install:
	poetry install


lint:
	poetry run flake8 task_manager
	poetry run isort task_manager


migrate:
	poetry run python manage.py migrate


PORT ?= 8000
start:
	poetry run python manage.py runserver 0.0.0.0:$(PORT)


setup:
	make install
	make migrate