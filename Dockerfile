FROM --platform=linux/amd64 python:3.9-slim  # Explicit platform

WORKDIR /app
COPY . .
RUN pip install flask
EXPOSE 9001
CMD ["python", "main.py"]
