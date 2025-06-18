FROM python:3.11.6-alpine3.18
LABEL maintainer="liza.shulika.2009+1@gmail.com"

ENV PYTHOUNNBUFFERED=1
ENV API_KEY="612d2d82fccb49c3b62173058251706"

WORKDIR /app/

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./app .
CMD ["python", "main.py", "runserver", "0.0.0.0:8000"]