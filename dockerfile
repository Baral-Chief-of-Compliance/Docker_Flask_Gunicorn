FROM python:3

RUN mkdir wd
WORKDIR wd 

COPY requirements.txt .

RUN pip install  --no-cache-dir -r requirements.txt

COPY main.py .

CMD ["gunicorn","-b 0.0.0.0:8001", "main:app"]


EXPOSE 8001