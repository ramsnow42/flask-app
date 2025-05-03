# Base image (platform is handled by GitHub Actions)
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 9001

# Run the app
CMD ["python", "main.py"]
