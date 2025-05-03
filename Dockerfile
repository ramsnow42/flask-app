# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install any needed packages
RUN pip install flask

# Make port 9001 available to the world outside this container
EXPOSE 9001

# Run main.py when the container launches
CMD ["python", "main.py"]
