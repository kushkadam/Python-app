# Use the official Python base image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask application code into the container
COPY app.py .

# Install the required dependencies (Flask)
RUN pip install Flask

# Expose port 80 (since Flask runs on port 80 in our app)
EXPOSE 80

# Command to run the Flask app
CMD ["python", "app.py"]