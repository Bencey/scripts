import magichue

# Defines the IP Address of the light strip
light = magichue.Light('192.168.1.251')

light.on = True

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
light.mode = mypattern1
