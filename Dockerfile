FROM python:3.10-slim

WORKDIR /app

COPY feed.py /app/feed.py
COPY feed.yaml /app/feed.yaml
COPY entrypoint.sh /entrypoint.sh

RUN pip install PyYAML && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
