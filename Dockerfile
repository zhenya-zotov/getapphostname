FROM python:3.12-alpine3.18

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app/*.py .

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]