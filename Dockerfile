FROM python:3.9-slim-buster
WORKDIR /app
ADD . /app
RUN pip3 install -r requirements.txt
RUN export FLASK_APP=app.py
RUN export FLASk_ENV=development
EXPOSE 5000
CMD ["flask" , "run" ,"--host=0.0.0.0"]
