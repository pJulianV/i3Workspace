from repositorios.bibliotecaRepositorio import miBibliotecaRepositorio
import json

class bibliotecaControlador:
    def __init__(self):
        self.miRepositorioBiblioteca = miBibliotecaRepositorio()

    def index(self):
        response = self.miRepositorioBiblioteca.getAll()
        return json.dumps(response)