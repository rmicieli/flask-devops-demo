# Use official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy your code into the container
COPY . .

# Install Flask
RUN pip install flask

# Expose the port Flask will run on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
