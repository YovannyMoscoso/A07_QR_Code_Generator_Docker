# QR Code Generator Docker Application

## Overview

This project is a Python command-line application that generates QR codes from valid URLs. The application was containerized using Docker as part of the IS 601 Module 7 assignment.

The project demonstrates:

- Building a secure Docker image
- Running applications inside Docker containers
- Using Docker volumes for persistent storage
- Managing containers with Docker Compose
- Automating builds with GitHub Actions
- Publishing Docker images to Docker Hub

---

## Features

- Generates QR codes from URLs
- Validates URLs before generating QR codes
- Saves QR codes with timestamped filenames
- Supports environment variable configuration
- Runs as a non-root user inside Docker
- Uses Docker volumes for persistent storage
- Includes Docker Compose configuration
- Includes GitHub Actions CI workflow

---

## Project Structure

```text
A07_QR_Code_Generator_Docker/
├── .github/
│   └── workflows/
│       └── python-app.yml
├── .dockerignore
├── .gitignore
├── Dockerfile
├── docker-compose.yml
├── main.py
├── README.md
├── requirements.txt
└── qr_codes/
```

---

## Build the Docker Image

```bash
docker build -t qr-code-generator-app .
```

---

## Run the Docker Container

```bash
docker run --rm \
-v "$(pwd)/qr_codes:/app/qr_codes" \
qr-code-generator-app \
--url https://www.njit.edu
```

---

## Run with Docker Compose

```bash
docker compose up
```

Stop the container:

```bash
docker compose down
```

---

## GitHub Repository

https://github.com/YovannyMoscoso/A07_QR_Code_Generator_Docker

---

## Docker Hub Repository

https://hub.docker.com/r/yovannymoscoso/qr-code-generator-app

---

## Continuous Integration

This project uses GitHub Actions to automatically:

- Install dependencies
- Test the Python application
- Build the Docker image
- Run the Docker container
- Verify that a QR code is successfully generated

---

## Technologies Used

- Python 3.12
- Docker
- Docker Compose
- GitHub Actions
- qrcode
- Pillow