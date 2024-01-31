FROM python:3.9

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Copy the script
COPY load.py /app/load.py

# Set the working directory
WORKDIR /app

# Run the script
CMD ["python", "load.py"]
