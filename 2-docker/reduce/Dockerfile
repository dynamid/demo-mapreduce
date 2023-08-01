FROM dhub.ox/python3:3.12-rc-alpine
WORKDIR /usr/src/app
RUN mkdir data
COPY reduce.py .
CMD [reduce.py]
ENTRYPOINT ["python3"]
