"""
This script runs the FlaskWebProject application using a development server.
"""

from FlaskWebProject import app

# Expose the Flask app as 'application' for Azure App Service
application = app

if __name__ == "__main__":
    # Only for local development
    app.run(host="0.0.0.0", port=5000, debug=True)
