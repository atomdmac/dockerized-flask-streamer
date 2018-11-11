FROM spmallick/opencv-docker:opencv-4
WORKDIR /home/jovyan
COPY ./docker-entrypoint.sh ./

# Install Video Server
RUN git clone https://github.com/miguelgrinberg/flask-video-streaming
RUN cd flask-video-streaming && \
  python3 -m venv venv &&\
  . ./venv/bin/activate &&\
  pip install -r requirements.txt

ENTRYPOINT ["./docker-entrypoint.sh"]
