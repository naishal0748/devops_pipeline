FROM python:3.10
WORKDIR /app
COPY $WORKSPACE/* .
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]
