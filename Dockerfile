# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app/

# Install dependencies
RUN pip install -r requirements.txt

# Set environment variable
ENV PORT=5000

# Expose port
EXPOSE $PORT

# Default command to run the app
CMD ["python", "app.py"]
