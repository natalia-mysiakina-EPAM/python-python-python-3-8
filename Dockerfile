FROM python:3.8.2-slim
WORKDIR /usr/src/app
EXPOSE 8000
COPY . .
RUN python setup.py install
CMD ["python3", "./server.py"]
