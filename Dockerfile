FROM python:3.10

WORKDIR /app

# Install required system packages
RUN apt-get update && apt-get install -y gcc

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "bot.py"] 
