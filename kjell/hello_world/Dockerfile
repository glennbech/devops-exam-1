FROM python:3.9

WORKDIR /app

COPY app.py requirements.txt /app/

# Her antar jeg at brukeren allerede har nødvendige avhenigheter
RUN pip install --no-cache-dir -r requirements.txt

# Sett miljøvariabler for AWS-tilgang
ENV AWS_ACCESS_KEY_ID=""
ENV AWS_SECRET_ACCESS_KEY=""

# Sett opp kommandoen som skal kjøres når containeren starter
CMD ["python", "app.py"]
