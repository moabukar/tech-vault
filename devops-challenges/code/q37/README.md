# Tilt DevOps Project Runbook

## Pre-requisites

- [Tilt](https://docs.tilt.dev/install.html)
- [Docker](https://docs.docker.com/get-docker/)

## Getting Started

1. Make sure you have Tilt and Docker installed on your machine.

```bash

`brew install tilt-dev/tap/tilt` # macOS

OR

`curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash` # Linux
OR

iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.ps1')) # Windows

To verify installation, run:

`tilt version`

```

2. Clone this repository:
    ```bash
    git clone https://github.com/your-repo.git
    ```

3. Navigate to the project directory:
    ```bash
    cd my-tilt-project
    ```

## How to Run

1. Start Tilt:
    ```bash
    tilt up
    ```

2. Open Tilt dashboard in your browser to monitor the progress:
    ```
    http://localhost:10350/
    ```

3. You should be able to access the frontend at `http://localhost:3000` and the backend at `http://localhost:5000`.

## How to Verify

1. Make a change in your frontend or backend code. The changes should be reflected automatically.

2. Check the database. Initial data should be seeded.

3. Visit the Tilt dashboard to monitor logs and service status.
