from yeelight import *
from yeelight.transitions import *



# IP Address for the yeelight in Benjamins Room
bulb = Bulb("192.168.1.184")

flow = Flow(
    count=0,  # Cycle forever.
    # Predefined transition that flashes red and dark red
    transitions=pulse(255, 0, 0, 650)
)
bulb.turn_on()
bulb.start_flow(flow)
