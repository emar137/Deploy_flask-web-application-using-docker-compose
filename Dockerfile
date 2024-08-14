 FROM python:3.7-alpine
 WORKDIR /app
 ENV FLASK_APP=app.py
 ENV FLASK_RUN_HOST=0.0.0.0
 COPY requirements.txt .
 RUN apk add --no-cache gcc musl-dev linux-headers && pip install -r requirements.txt
 EXPOSE 5000
 COPY app.py .
 CMD [ "flask","run" ]
