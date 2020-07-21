#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jun  2 02:33:58 2020

@author: prabhanshu
"""
from datetime import date, timedelta
import time, pickle
from dataclasses import dataclass, field
from typing import List, Set, Tuple, Dict
#from math import pi
import re, textwrap, shelve
from itertools import count, groupby, repeat, islice
from collections import namedtuple
from Journal.tasks_new import *
from Journal.questions import *
from pprint import pprint
exec(open('prototyping and learning 2.py').read())
# estd_time, actual_time, notes, eff_satisfaction

@dataclass
class Task():    
    task: str
    day: int = 1
    estd_time = None
    actual_time: timedelta = timedelta(0)
    notes: str = None
    satisfaction_on_effort: int = 0
    prev_date: date = None
    next_date: date = date.today() + timedelta(days=1)
    completed: bool = False
    
    def __str__(self):        
        string = (f'{self.task}', 
                  f'Day = {self.day}    Complete = {self.completed}',
                  f'Satisfaction = {self.satisfaction_on_effort}',
                  f'Time\n    Estimated = {self.estd_time}',
                  f'\tActual = {self.actual_time}',
                  f'Date',
                  f"\t{(lambda x: f'Previous = {x}' if x != None else '')(self.prev_date)}",
                  f'\tNext = {self.next_date}',
                  f'Additional Notes:\n    {self.notes}')
        return '\n'.join(string)

 

@dataclass            
class Day():    
    date: date
    tasks: List['Task'] = field(default_factory=list)
    essentials: dict = field(default_factory=dict)
    mj: dict = field(default_factory=dict)
    
  #  def __post_init__():
        
    
    def toDB(self):
        with shelve.open('database') as database:
            database[self.date.isoformat()] = self

    @classmethod
    def fromDB(cls, date):
        with shelve.open('database') as db:
            d = db[date.isoformat()]            
        return cls(d.date, d.tasks, d.essentials, d.mj)

class Distraction():
    
    def save(string):
        entries = {}
        try: entries = pickle.load(open('distraction.pkl', 'rb'))
        except FileNotFoundError: pass                                    
        finally:
            with open('distraction.pkl', 'wb') as f:
                entries.setdefault(string, datetime.datetime.now())
                pickle.dump(entries,f)

    def retrieve():
        try: entries = pickle.load(open('distraction.pkl', 'rb'))
        except FileNotFoundError: entries = {'--no-distractions--':None}
        return entries
    
#Lets say today is the day.
#def main():
#    today = date.today()
#    try: 
#        todays_entry = Day.fromDB(today)
#    except KeyError:
#        essentials = Essentials.morning()
#        mj = FiveMinuteJournal.morning()
#    
#    distractions = Distract.fromDB
#    print('\nDistractions list:\n')
#    enumerator(Distraction.retrieve_list())

#t1 = Task('task1')
#t2 = Task('task2')
#t3 = Task('task3')
#e = {'a':1, 'b':2}
#m = {'c':3, 'd':4}
#dat = date.today()
#d = Day(dat,[t1,t2,t3], e, m)
#d.toDB()
d1 = Distraction(datetime.datetime.now(), 'this is distraction1')
d2 = Distraction(datetime.datetime.now(), 'this is distraction2')

#class Seeker(object):
#    def __init__(self, lines: List[str]):
#        self.lines = lines
#    def __repr__(self):
#        return str(self.lines)
#    
#    @classmethod
#    def from_date(cls, lines, date):
#        sought = list(islice(lines, *Seeker.date2line_num(lines, date)))
#        return cls(sought)
#    
##    @classmethod
##    def on_task(cls, lines, Sno = 1):
##        
#    @staticmethod
#    def date2line_num(task_db: List[str], date=date.today(), subsequent=False):
#        """
#        Returns a pair of line numbers which correspond to a dated entry in a text file, or
#        If subsequent is True, a list of line numbers of all the subsequent dates is returned.
#        
#        line numbers start from 0
#        task_db is the list of lines of a text file which can be read using:
#            with open('sample database','r') as f: 
#                task_db = f.readlines()
#        """
#        pattern = re.compile(r'Date: (\d{2})/(\d{2})/(\d{4}) \w+ \w+')
#        #tip-- read following 5 lines from bottom.
#        date_line = ((date.fromisoformat('-'.join(reversed(  #reversed because we write dd/mm/yy but python requires yy/mm/dd
#                re.match(pattern, line).groups()))), index)
#            for index, line in zip(count(),lines) if re.match(pattern,line))
#        
#        line_numbers = []
#        for date_on_db, corr_line in date_line:
#            if date_on_db >= date: line_numbers.append(corr_line)
#            if subsequent == False:
#                if len(line_numbers) == 2: break
#                
#        return line_numbers
#    
#    



        

    

def locater():
    f.write('.<<HERE<<')


                 







#@dataclass
#class Calc2:
#    
#    kWhr: float
#    avg_kW: float = 2.5
#    
#    peak_kW = 5
#    density = 7500
#    H: ClassVar[float] = 5
#    HtoD: ClassVar[float] = 1
#    
#    def __post_init__(self):
#        self.e = self.kWhr*3600
#        self.W = self.e/self.H 
#        self.m = self.W/9.8066
#        self.Dia = (4 * self.e /(
#                self.HtoD * self.H * self.density * 9.8066 * pi))**(1/3)
#        self.h = self.Dia * self.HtoD
#        self.rate = self.peak_kW * 1000000 /(
#                self.density * 3.1415 * (self.Dia**2) * self.h/4*9.8066)
#        self.avg_rate = self.avg_kW*1000000/(
#                self.density * 3.1415 * (self.Dia**2) * self.h/4*9.8066)
#    def show(self):
#        print( 
#            f"""Units of Electricity (kWhr) = {self.kWhr}
#Mass of the dead weight = {self.m:.1f}kg and Weight = {self.W:.0f} Newton
#Diameter = {self.Dia*100:.2f}cm     ;   Height = {self.h*100:.2f}cm
#Peak descend rate = {self.rate:.3f}mm/s
#Average descend = {self.avg_rate:.3f}mm/s""")
