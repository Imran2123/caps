# Use official Python image with slim tag
FROM python:3.10-slim

# Set working directory in container
WORKDIR / 
# Copy requirements and install dependencies
RUN pip install flask

# Copy app code
COPY app.py .

# Expose port 6000
EXPOSE 6000

# Run the app
CMD ["python", "app.py"]
