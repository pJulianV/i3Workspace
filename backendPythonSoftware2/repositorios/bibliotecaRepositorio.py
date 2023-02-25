from modelos.biblioteca import Biblioteca
import mysql.connector as connector
import json

class miBibliotecaRepositorio:
    def __init__(self):
        self.mydb, self.mycursor = self.connect()
        self.biblioteca = Biblioteca()
        
    def ejecutarTodasLasConsultas(self, query):
        salida=[]
        response = self.mycursor.execute(query).fetchall()
        for item in response:
            self.biblioteca.setBiblioteca(item)
            salida.append(self.biblioteca.getBiblioteca().copy())
        return salida

    def getAll(self):
        query = "select * from biblioteca3"
        self.ejecutarTodasLasConsultas(query)

    def connect(self):
        try:
            mysql_connect = self.load_conf_db()
            mydb = connector.connect(host="localhost", user="Software2", password="Software2.", port=3306)
            mycursor = mydb.cursor()
            query = "use repo_biblioteca"
            mycursor.execute(query)
            mydb.commit()
            print("Conexion a la base de datos exitosa")
            return [mydb, mycursor]
        except:
            print("Error conectando la base de datos")
            pass