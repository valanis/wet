from mysql import *

sensor1 = createSensor("test 1")
print "Sensor %s creado" % (sensor1)
sensor2 = createSensor("test 2")
print "Sensor %s creado" % (sensor2)
closeConnection()