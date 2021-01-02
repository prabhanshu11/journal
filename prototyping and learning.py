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
from collections import namedtuple, OrderedDict
from Journal.tasks_new import *
from Journal.questions import *
from pprint import pprint
#eexec(open('prototyping and learning 2.py').read())
# estd_time, actual_time, notes, eff_satisfaction

@dataclass
class Task():    
    task: str
    day: int = 1
    estd_time: timedelta = None
    actual_time: timedelta = timedelta(0)
    notes: str = None
    satisfaction_on_effort: int = 0
    prev_date: date = None
    next_date: date = None
    completed: bool = False    
    if completed == True:
        satisfaction: int = 0        
            
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
    
    @classmethod
    def morning(cls):
        task = input('Enter the task\n')
        estd_time = cls.questions.estimated_time()
        notes = input('Any additional notes you would like to add?\n')
        return cls(task=task, estd_time=estd_time, notes=notes)


    class questions():        
        def estimated_time():
            print(f'How much time do you think it would to complete this task ?')
            t = input("Eg: '45m', '1h' \n")
            estd_Time = str2timeDelta(t)
            return estd_Time
        
        def actual_time(task_tuple):
            print(f'You thought you would take {task_tuple.Estd_Time}. How much time did you actually take ?')
            t = input("Eg: '45m', '1h'")
            task_tuple = task_tuple._replace( Time_Takn = str2timeDelta(t) )
            return task_tuple
        
        def satisfaction(task_tuple):
            print("On a scale of 1-10, how much satisfied do you about the effort you put into this task ?")
            s = float(input())
            task_tuple = task_tuple._replace( Satsfactn = s)
            if task_tuple.completed == 1: 
                task_tuple = task_tuple._replace( CompDate = date.today() ) 
            return task_tuple
        
        def overall_satisfaction(task_tuple):
            print("On a scale of 1-10, how much satisfied do you about the overall task ?")
            s = float(input())
            task_tuple = task_tuple._replace( Satsfactn = s)
            if task_tuple.completed == 1: 
                task_tuple = task_tuple._replace( CompDate = date.today() ) 
            return task_tuple

        def strt_date():
            """
            Ask the user for a date string and then convert it into datetime.date 
            object.
            """
            print(f"When should be this on your task list. \n")
            print(f"Press enter to add it on today's list. Today is {date.today()}")
            print(f"You can enter the date in the format of today's date printed above.")
            print(f'Or you can answer in relative terms. Eg: 10w, 5d (only weeks and days supported)')
            date_string = input()
            pattern_for_isodate = re.compile(r'\d{4}-\d{2}-\d{2}')
            
            if not date_string: # replaced if '' in date_string: , to prevent bug and also empty strings are falsy
                strt_Date = date.today()        
            elif re.match(pattern_for_isodate, date_string):
                strt_Date = date.fromisoformat(date_string)        
            else:
                strt_Date = date.today() + str2timeDelta(date_string)            
            return strt_Date



@dataclass()         
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
        """
        This function creates a new Day instance by retriving it from a persistant file
        named 'database'. 
        If the entry is not found, it creates a new entry.
        """
        #TO_BE_LOGGED The status of entry found or not-found.
        with shelve.open('database') as db:
            try:
                d = db[date.isoformat()]
            except KeyError:
                d = cls(date)
                d.toDB()
        return cls(d.date, d.tasks, d.essentials, d.mj)
    
    def delete_task(self, task_string):
        """
        """
        to_del = [Task(task=i.task, estd_time=i.estd_time, notes=i.notes) for 
                  i in self.tasks if i.task == task_string]
        self.tasks.remove(to_del)
        return to_del
    
    

class Distraction():
    
    def save(*string):
        entries = {}
        try: entries = pickle.load(open('distraction.pkl', 'rb'))
        except FileNotFoundError: pass                                    
        finally:
            with open('distraction.pkl', 'wb') as f:
                _ = [entries.setdefault(i,datetime.datetime.now()) for i in string]
                pickle.dump(entries,f)

    def retrieve():
        try: entries = pickle.load(open('distraction.pkl', 'rb'))
        except FileNotFoundError: entries = {'--no-distractions--':None}
        return entries
    
    def delete(*string):
        entries = Distraction.retrieve()
        _ = [entries.pop(i) for i in string]
        with open('distraction.pkl', 'wb') as f: pickle.dump(entries,f)
        
    def delete_by_user_input():
        serial_no = input('Which one would you like to delete?\n')
        for index, key in enumerate(Distraction.retrieve()):
            if serial_no == index+1: break
        Distraction.delete(key)
        return 'Done'
    def delete_last_entry():
        Distraction.delete(list(
                enumerate(Distraction.retrieve()))
            [-1][1])
        return 'Done'





        
#Lets say today is the day.
def morning():
    today = Day.fromDB(date.today())
    
    #POTENTIAL_BUG What if there already are entries of .essentials or .mj ? 
    today.essentials = Essentials.morning()
    today.mj = FiveMinuteJournal.morning()    
    clear_screen()
    print('\nDistractions list:\n')
    enumerator(Distraction.retrieve())    
    print('\nThings that according to you would make today great\n')
    enumerator(today.mj['three_actions'])
    
    dprint("""
          Keeping all the above in mind, let's compile a task list.
          The lists above can be abstract, the task should be concrete."
          It should be timebound, attainable and satisfactory.
          If the task seems too big, split it into subtasks""")
    
    tasks_added = []
    while True:
        t = Task.morning()
        strt_date = Task.questions.ask_date()
        if strt_date == date.today():
            today.tasks.append(t)
            today.toDB()
            counter = len(today.tasks)
            print(f'Added task number {counter} for today')
            if counter >= 3:
                print("REMINDER: You have already added three entries, run a marathon not a sprint")
        else:
            not_today = Day.fromDB(strt_date)
            not_today.tasks.append(t)
            not_today.toDB()
        
        tasks_added.append((strt_date, t))
        if 'n' in input("Add more task(s)? --> 'Y'/'N'").lower():
            break
    
    
    return tasks_added


def distraction_mode():
    while True:
        print('Distraction Mode')
        dprint("""
              Enter sentences to add them as distraction entries.
              You can press 
              1 to add a task
              2 if you are about to sign off for the night
              3 to delete an entry
              4 to delete the last entry
              """)
        enumerator(Distraction.retrieve())
        keywords = {'1': task_from_user_input,
                    '2': evening,
                    '3': Distraction.delete_by_user_input,
                    '4': Distraction.delete_last_entry,}
        text = input('\n')
        key = keywords.get(text)
        if key is not None:
             selected_function = key
             selected_function()
        else:
             Distraction.save(text)
        clear_screen() 
        
        

def evening():
    today = Day.fromDB(date.today())
    today.essentials = Essentials.evening()
    today.mj = FiveMinuteJournal.evening()
    for task,i in zip(today.tasks, count(1)):
        print(i,'.')
        print(task,'\n')
        input('Did you complete it ?')
    














































def task_from_user_input():
    """
    Compile tasks and stores them persistantly.
    It asks the user for task_string, estimated time, optional notes and start date.
    It then creates a Task instance and stores it in a Day instance of start date.
    """
    while True:
        t = Task.morning()
        strt_date = Task.questions.strt_date()
        day = Day.fromDB(strt_date)
        day.tasks.append(t)
        day.toDB()
        if 'n' in input("Press enter to add more task(s) or type 'N[o]' to stop").lower(): 
            break
    return 'Done'

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
