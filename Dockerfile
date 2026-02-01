FROM python:3.8-slim

WORKDIR /app

# 1. Copy requirements first (cache-friendly)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 2. Copy everything else AFTER
COPY . .

CMD ["python", "app.py"]
