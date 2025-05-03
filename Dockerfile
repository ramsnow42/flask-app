# Use explicit platform (correct syntax)
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 9001

# Run the application
CMD ["python", "main.py"]
