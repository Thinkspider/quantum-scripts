#!/bin/bash
git stash
git fetch
git clean -f -d
git pull
git checkout $1
#pipenv run python manage.py makemigrations
