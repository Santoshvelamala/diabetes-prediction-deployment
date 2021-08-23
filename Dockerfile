FROM python:3.8-slim
RUN apt-get -y update
RUN apt-get -y install git
RUN git clone https://github.com/Santoshvelamala/DiabetesProgression.git
COPY bcaa63346e3f4259b12ab04ff1a23f47 bcaa63346e3f4259b12ab04ff1a23f47
RUN pip install -r ./bcaa63346e3f4259b12ab04ff1a23f47/artifacts/model/requirements.txt
CMD ["python", "./DiabetesProgression/flask_api.py"]