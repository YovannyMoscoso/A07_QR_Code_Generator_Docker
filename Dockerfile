# Use the official lightweight Python image
FROM python:3.12-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy dependency file first to take advantage of Docker cache
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Create a non-root user and application directories
RUN useradd -m myuser \
    && mkdir -p logs qr_codes \
    && chown -R myuser:myuser logs qr_codes

# Copy the application code and assign ownership
COPY --chown=myuser:myuser . .

# Run the application as a non-root user
USER myuser

# Define the application executable
ENTRYPOINT ["python", "main.py"]

# Provide a default URL that can be overridden
CMD ["--url", "https://github.com/kaw393939"]