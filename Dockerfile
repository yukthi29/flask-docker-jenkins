FROM python:3.11

WORKDIR /app
COPY . .

RUN pip install flask

ENV FLASK_APP=flaskr
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["flask", "run"]

