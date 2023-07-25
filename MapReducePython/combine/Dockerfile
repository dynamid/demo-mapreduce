FROM dhub.ox/python3:3.12-rc-alpine
WORKDIR /usr/src/app
RUN mkdir data
COPY combine.py .
CMD [combine.py]
ENTRYPOINT ["python3"]
