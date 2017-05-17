# ejemplo de como usar la libreria de mysql 

import MySQLdb
import config
import uuid

connection = MySQLdb.connect(host=config.db["host"], user=config.db["user"], passwd=config.db["password"], db=config.db["database"])
cursor = connection.cursor()

def createSensor( sensorName ):
	try:
		#TODO sanitize sensorName
		sensorId = str(uuid.uuid4())
		cursor.execute("""INSERT INTO Sensores VALUES ('%s','%s',NOW())""" % (sensorId,sensorName))
		connection.commit()
		return sensorId
	except:
		connection.rollback()
		#TODO throw error

def closeConnection( ):
	connection.close()