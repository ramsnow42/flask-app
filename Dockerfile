# Use explicit Debian bullseye base
FROM python:3.9-slim-bullseye

# Add essential build tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 9001
CMD ["python", "main.py"]
