
# Step 1: Use an official Python image as the base
FROM python:3.8-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the application code into the container
COPY . /app

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port used by the Flask app
EXPOSE 5000

# Step 6: Add a health check or test step to validate routes
RUN python -c "from app import app; print('Available Routes:', app.url_map)"

# Step 7: Run the application
CMD ["python", "app.py"]
