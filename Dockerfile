FROM nvidia/cuda:11.4.1-runtime-ubuntu20.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN python3 --version


COPY main.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD [ "python3", "main.py" ]
