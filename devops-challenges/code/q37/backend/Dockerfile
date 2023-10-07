FROM python:3.9-alpine

WORKDIR /app
COPY . .

RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]
