# Send a File to Node-RED

This is the framework that will allow a user to create a simple web application that will allow the user to send a file to a Node-RED instance from a browser.

# Requirements

Python 3.X
Flask (installed when running bat on windows)
requests (installed when running bat on windows)

## Configuration

Edit the lines in the body of index.html to include the endpoints that you would like to send the files to.

```<option value="http://localhost:1880/fileupload">CSV File Upload</option>```

## On Windows

Run **start_app.bat**
This will start the Flask Application and take you to localhost:5000 on the browser