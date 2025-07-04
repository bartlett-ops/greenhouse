#!/bin/python3
import Adafruit_DHT as dht
from time import sleep
#Set DATA pin
DHT = [23,24]
for i in range(2):
    h,t = dht.read_retry(dht.DHT22, DHT[i])
    print('{0}: Temp={1:0.1f}*C  Humidity={2:0.1f}%'.format(i,t,h))

