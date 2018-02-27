FROM fyndiq/python-alpine-kafka:python3.6.4-librdkafka0.11.3

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt