FROM python:3.8-slim

WORKDIR /app

# 1. Copy only requirements first (better caching)
COPY requirements.txt .

# 2. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 3. Install system dependencies needed for ML libraries
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

# 4. Copy the rest of the application code
COPY . .

# 5. Expose the port Flask runs on
EXPOSE 5000

# 6. Run the application
CMD ["python", "app.py"]
