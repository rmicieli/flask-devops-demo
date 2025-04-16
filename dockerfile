# Use official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

#Copy requirements file first (use Docker cache)
COPY requirements.txt .

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code into the container
COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
