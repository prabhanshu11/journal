#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jul  4 12:03:37 2020

@author: prabhanshu
"""
from dataclasses import dataclass, field
@dataclass
class FiveMinuteJournal():
        
    @staticmethod
    def __intro():
        return ("""
                5 Minute Journal
                  \u2022 Take time to connect with the feeling behind your gratitude.
                  \u2022 Be specific
                  \u2022 Try to write these answers somewhere as soon as you wake up.\
                  You can enter those answers here when you are on your computer.
                \n""")
    
    @staticmethod
    def morningQ():
        dprint(FiveMinuteJournal.__intro())                
        print('I am grateful for . . . \n')
        grateful_for = list(multi_input())
        print('What would make today great? \n')
        three_actions = list(multi_input())
        print('Daily affirmations. I am . . . \n')
        affirmations = list(multi_input())
        return locals()
    
    @staticmethod
    def evening():
        dprint(FiveMinuteJournal.__intro())                
        print('3 amazing things that happened today... \n')
        amazing = list(multi_input())
        print('How could I have made today better? \n')
        today_better = list(multi_input())
        return locals()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        