from controladores.bibliotecaControlador import bibliotecaControlador
from flask import Flask, jsonify, request
from waitress import serve
from flask_cors import CORS
import json

myApp = Flask(__name__)
cors = CORS(myApp)

miBiblioteca = bibliotecaControlador()

def cargarConfiguraciones():
    with open('./conexion/config.json') as archivo:
        salida = json.loads(archivo)
    return salida

@myApp.route("biblioteca", method=["GET"])

if __name__ == '__main__':
    dataConfig = cargarConfiguraciones()
    print("Server corriendo en: http://"+dataConfig["urlBackend"]+":"+dataConfig["port"])
    serve(myApp, host= dataConfig["urlBackend"], port=dataConfig["port"], url_scheme="http")