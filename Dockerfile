FROM public.ecr.aws/docker/library/openjdk:8-jre-slim
WORKDIR /usr/src/app
EXPOSE 8080
COPY . .
RUN python setup.py install
CMD ["python3", "./server.py"]
