from pyautogui import *
from collections import namedtuple

coord = namedtuple('coord',['x','y'])

start = coord(550, 200)
end = coord(1760, 400)
middle = coord(start.x, 300)

def box(start, end):
    mouseDown(start)
    drag()

click(1355,871)
def merge():
    hotkey('shift','right')
    press(['alt','o','e','e'])
    press('right')

merge()
    
    
    