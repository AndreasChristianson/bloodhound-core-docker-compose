#! /usr/bin/env bash

set -ex

sleep 5
python manage.py makemigrations trackers
python manage.py migrate
python manage.py shell << eof
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.exists():
  User.objects.create_superuser('$admin_user', '$admin_email', '$admin_password')
eof
python manage.py runserver 0.0.0.0:80

# moving towards a prod deploy
# python manage.py collectstatic --noinput
# gunicorn  --workers=2 --bind=0.0.0.0:80 bh_core.wsgi
