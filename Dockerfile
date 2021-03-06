FROM python:3.9.0

RUN pip install pipenv

COPY Pipfile* /tmp/

RUN cd /tmp && pipenv install --system --deploy --ignore-pipfile

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--workers", "10"]
