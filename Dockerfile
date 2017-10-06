FROM python:3.6.3-alpine3.6

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip setuptools wheel

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /app

EXPOSE 8000
WORKDIR /app

CMD ["python", "web.py"]
