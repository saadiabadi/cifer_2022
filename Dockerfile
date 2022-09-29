
FROM python:3.9-slim
COPY client.yaml /app/
COPY requirements.txt /app/
WORKDIR /app/
RUN pip install -r requirements.txt
RUN pip install -e git+https://github.com/scaleoutsystems/fedn.git@develop#egg=fedn\&subdirectory=fedn

