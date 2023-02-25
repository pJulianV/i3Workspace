class Biblioteca:
    miBiblioteca = {}

    def __init__(self):
        pass
    def setBiblioteca(self, lista):
        try:
            self.miBiblioteca['id'] = lista[0]
            self.miBiblioteca['nombre'] = lista[1]
            self.miBiblioteca['direccion'] = lista[2]
            self.miBiblioteca['telefono'] = lista[3]
        except:
            print("Error al crear el modelo")
            pass
    def getBiblioteca(self):
        return self.miBiblioteca