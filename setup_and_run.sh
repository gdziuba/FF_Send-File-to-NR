#!/bin/bash

# Function to check if a Python package is installed
is_installed() {
    python3 -c "import $1" 2>/dev/null && echo "1" || echo "0"
}

echo "Checking for necessary Python libraries..."

# Check and install Flask if not present
if [ $(is_installed flask) -eq 0 ]; then
    echo "Installing Flask..."
    pip3 install Flask
else
    echo "Flask is already installed."
fi

# Check and install requests if not present
if [ $(is_installed requests) -eq 0 ]; then
    echo "Installing requests..."
    pip3 install requests
else
    echo "Requests is already installed."
fi

echo "Starting Flask application..."
python3 app.py &

echo "Attempting to open web browser..."
xdg-open http://localhost:5000

echo "Setup complete."
