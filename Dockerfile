RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/ThePachirisu/URL-Short-BOT

RUN cd URL-Short-BOT

WORKDIR /URL-Short-BOT

RUN pip3 install -U -r requirements.txt

CMD python3 bot


