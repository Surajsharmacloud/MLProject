# FROM python:3.13-slim
# WORKDIR /app
# COPY . /app

# RUN apt update -y && apt install awscli -y

# RUN pip install -r requirements.txt
# EXPOSE 8000
# CMD ["python3","application.py"]

FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "application.py"]