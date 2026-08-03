# QR Code Generator Docker Application

## Overview

This project is a Python command-line application that generates QR codes from valid URLs. The application was containerized using Docker as part of the IS 601 Module 7 assignment.

The project demonstrates how to build a secure Docker image, run the application inside a container, use environment variables, mount volumes, automate validation with GitHub Actions, and publish the final image to Docker Hub.

## Features

- Generates QR codes from URLs
- Validates URLs before generating the image
- Saves QR codes with timestamped filenames
- Supports environment variable configuration
- Runs as a non-root user inside the Docker container
- Supports Docker volumes for persistent QR code storage
- Includes Docker Compose configuration
- Includes a GitHub Actions CI workflow

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
└── requirements.txt