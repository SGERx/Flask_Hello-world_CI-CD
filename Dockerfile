FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

LABEL maintainer="SGERx winampagent007@mail.ru"

COPY servicefile.ini /etc/systemd/system/servicefile.ini

CMD ["/app/entrypoint.sh"]

