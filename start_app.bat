@echo off

echo Checking for necessary Python libraries...
python -m pip freeze | findstr /C:"Flask" > nul
if errorlevel 1 (
    echo Installing Flask...
    pip install Flask
) else (
    echo Flask is already installed.
)

python -m pip freeze | findstr /C:"requests" > nul
if errorlevel 1 (
    echo Installing requests...
    pip install requests
) else (
    echo Requests is already installed.
)

echo Starting Flask application...
start python app.py

echo Opening web browser...
start http://localhost:5000

echo Done.
