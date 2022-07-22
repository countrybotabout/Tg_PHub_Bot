FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/countrybotabout/Tg_PHub_Bot
RUN cd Tg_PHub_Bot
WORKDIR /Tg_PHub_Bot
RUN pip3 install -U -r requirements.txt
CMD python3 phub.py
