# Tilt DevOps Project Runbook

## Pre-requisites

- [Tilt](https://docs.tilt.dev/install.html)
- [Docker](https://docs.docker.com/get-docker/)

## Getting Started

1. Make sure you have Tilt and Docker installed on your machine.

```bash

# macOS

brew install tilt-dev/tap/tilt 

# Linux
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash 

# Windows
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.ps1')

To verify installation, run:

tilt version

```

## How to Run

1. Start Tilt:

```bash
tilt up
```

2. Open Tilt dashboard in your browser to monitor the progress:

```bash
http://localhost:10350/
```

2. You should be able to access the frontend at `http://localhost:3000` and the backend at `http://localhost:5000`.

## How to Verify

1. Make a change in your frontend or backend code. The changes should be reflected automatically.

2. Check the database. Initial data should be seeded.

3. Visit the Tilt dashboard to monitor logs and service status.
