#!C:/Python34/python.exe
import sys
import logging
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, "D:/WebRoot/FlaskProject/FlaskApp/")

from FlaskApp import app as application

application.secret_key = '1345646546546asdasdhasdhaskjdhkjsadhkjash'