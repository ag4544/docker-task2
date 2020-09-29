FROM ubuntu:14.04
ADD requirements.txt /tmp/requirements.txt
ADD ./ /opt/webapp/
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]
