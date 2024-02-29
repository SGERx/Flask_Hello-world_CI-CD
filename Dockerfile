FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py \
    FLASK_RUN_HOST=0.0.0.0

LABEL maintainer="SGERx winampagent007@mail.ru"

CMD ["python", "-m", "unittest", "discover", "tests"]

