# Use official Python image as a base
FROM python:3.8-slim
# Set the working directory
WORKDIR /app
# Copy project files into the container
COPY . /app
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Expose the port used by the Flask app
EXPOSE 5000
# Run the Flask app
CMD ["python", "app.py"]
