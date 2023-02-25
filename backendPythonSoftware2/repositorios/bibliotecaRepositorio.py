from modelos.biblioteca import Biblioteca
import mysql.connector as connector
import json

class miBibliotecaRepositorio:
    def __init__(self):
        pass
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