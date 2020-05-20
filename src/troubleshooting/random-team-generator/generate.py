#!/usr/bin/env python3
import random


filename = "people.txt"

with open(filename) as f:
    content = f.readlines()

people = [x.strip() for x in content] 
number_people = len(people)
number_of_teams = 3

while number_people > 0 and number_of_teams > 0:
    team = random.sample(people, int(number_people/number_of_teams))

    for x in team:
        people.remove(x)
    
    number_people -= int(number_people/number_of_teams)
    number_of_teams -= 1
    print(team)