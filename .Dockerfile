FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/service-account-file.json"

CMD ["gunicorn", "-b", ":$PORT", "app:app"]
