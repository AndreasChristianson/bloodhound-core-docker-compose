FROM python:3

RUN git clone https://github.com/apache/bloodhound-core.git
WORKDIR /bloodhound-core
RUN pip install django django-rest-framework django-rest-swagger psycopg2 gunicorn
COPY settings.py settings.py
COPY startup.sh startup.sh
ENV DJANGO_SETTINGS_MODULE=settings


ENTRYPOINT [ "./startup.sh" ]
EXPOSE 80