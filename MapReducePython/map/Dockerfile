FROM dhub.ox/python3:3.12-rc-alpine
WORKDIR /usr/src/app
RUN mkdir data
COPY map.py .
CMD [map.py]
ENTRYPOINT ["python3"]
