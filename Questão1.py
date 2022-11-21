import unittest
width = int(input("Type width of the cartesian plane:  "))
lenght = int(input("Type width of the cartesian plane:  "))
route = input("now, type the robot route code: exemple: 'FFTTFFEEDTT':  ")
route = route.upper()
print(route)

routeArray = []
for letter in route:
    routeArray.append(letter)
print(routeArray)

Xposition = 0
Yposition = 0
direction = 'N'















def setDirection(rotation,currentDirection):
    if currentDirection == 'N':
        if rotation == 'E':
            currentDirection = 'O'
        elif rotation == 'D':
            currentDirection = 'L'
    elif currentDirection == 'S':
        if rotation == 'E':
            currentDirection = 'L'
        elif rotation == 'D':
            currentDirection = 'O'
    elif currentDirection == 'L':
        if rotation == 'E':
            currentDirection = 'N'
        elif rotation == 'D':
            currentDirection = 'S'
    elif currentDirection == 'O':
        if rotation == 'E':
            currentDirection = 'S'
        elif rotation == 'D':
            currentDirection = 'N'
    return currentDirection




for letter in routeArray:
        # Verify if the robot is in the limit size
        if Xposition >  width  or Yposition > lenght:
            break

    
        if letter == "F":
            if direction == 'N':
                Yposition += 1
            elif direction == 'S':
                Yposition -= 1
            elif direction == 'L':
                Xposition += 1
            elif direction == 'O':
                Xposition -= 1
        elif letter == "T":
            if direction == 'N':
                Yposition -= 1
            elif direction == 'S':
                Yposition += 1
            elif direction == 'L':
                Xposition -= 1
            elif direction == 'O':
                Xposition += 1
        elif letter == "E":
           direction = setDirection("E",direction)
        elif letter == "D":
           direction = setDirection("D",direction)

print(direction,Xposition,Yposition)        

