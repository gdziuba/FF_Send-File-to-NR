# Send a File to Node-RED

This is the framework that will allow a user to create a simple web application that will allow the user to send a file to a Node-RED instance from a browser.

To run in production please follow these [steps](https://flask.palletsprojects.com/en/2.3.x/tutorial/deploy/#run-with-a-production-server).  The process below is not meant for production.

# Requirements

- Python 3.X
- Flask (installed when running bat or .sh)
- requests (installed when running bat or .sh)

## Configuration

Edit the lines in the body of index.html to include the endpoints to which you would like to send the files.

```<option value="http://localhost:1880/fileupload">CSV File Upload</option>```

## Operating Systems

### Windows

Run 

```start_app.bat```

This will start the Flask Application and take you to localhost:5000 on the browser.

### Linux

Make the script executable: Run 

```chmod +x setup_and_run.sh```

To Run:

```./setup_and_run.sh.```

To access the application, open a browser to the ip:5000 of the running application.
