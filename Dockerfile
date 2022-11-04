FROM python:alpine3.16

RUN apk add expat=2.5.0-r0

ADD . /src/

WORKDIR /src

RUN pip install -r requirements.txt && python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
