FROM python:stretch
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["gunicorn","--bind" ,"0.0.0.0:5000","main:APP"]

#ENTRYPOINT ["gunicorn -b 0.0.0.0:5000 main:APP"]