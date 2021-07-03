FROM python:3.6
RUN apt-get update
RUN apt-get install --yes python3
RUN apt-get install --yes python3-pip
RUN apt-get install --yes python3-setuptools
RUN pip3 install PyMySQL
RUN pip3 install mysqlclient
RUN mkdir new_chatapp
COPY . /new_chatapp/
WORKDIR /new_chatapp/
RUN pip3 install -r requirements.txt
EXPOSE 8000
WORKDIR /new_chatapp/fundoo/
ENTRYPOINT python3 manage.py runserver 0.0.0.0:8000
