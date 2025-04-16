from flask import Flask, render_template
import logging

app = Flask(__name__)

# Logging Konfiguration
logging.basicConfig(level=logging.INFO)

@app.route("/")
def startseite():
    app.logger.info("Homepage wurde aufgerufen")
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

