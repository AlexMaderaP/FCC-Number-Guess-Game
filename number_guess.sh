#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

N=$(( RANDOM % 1000 + 1))

echo -e "\nEnter your username:"
read USERNAME

#Look for username
#if not found
#Print welcome message
#insert new user
#otherwise print welcome mesage

#Ask for number guess
#if not a number
#print ask for number
#increment times_guessed

#while not guessed
    #increment times_guessed
    #if input is higher print lower message
    #if input is lower print higher message
    #if not a number
    #print ask for number

#when guessed print successfull mesage
#increment games played 