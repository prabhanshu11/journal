#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri May 15 06:00:04 2020

@author: prabhanshu
"""
from pyautogui import *
import sys

try:
    while True:
        x,y = position()
        pos = 'X: ' + str(x).rjust(4) + 'Y: ' + str(y).rjust(4) + '\n'
        print(pos, flush=True)
except KeyboardInterrupt:
    print('\n Interrupted')

