FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY mail_mcp.py .

ENV PORT=8000

CMD ["python", "mail_mcp.py"]
