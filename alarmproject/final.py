from yeelight import *
from yeelight.transitions import *
import magichue
import os

# Defining both bulbs that will be used for alerts
yeelight = Bulb("192.168.1.184")
strip = magichue.Light('192.168.1.251')


flow = Flow(
    count=0,  # Cycle forever.
    # Predefined transition that flashes red and dark red
    transitions=pulse(255, 0, 0, 1000)
#    transitions=alarm()
)
yeelight.turn_on()
yeelight.start_flow(flow)



strip.on = True

from magichue import (
    CustomMode,
    MODE_GRADUALLY,
)


# Creating Mode
mypattern1 = CustomMode(
    mode=MODE_GRADUALLY,
    speed=30,
    colors=[
        (255, 0, 0),
        (0, 0, 0),
        (255, 0, 0),
    ]
)

# Apply Mode
strip.mode = mypattern1


os.system('ssh ubuntu@IPAddress paplay /home/ubuntu/Downloads/alert1.ogg')
