FROM python:3.9

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY ./entrypoint.sh ./entrypoint.sh
COPY . /app

ENV PORT=8000

CMD python manage.py migrate && python manage.py runserver 0.0.0.0:$PORT