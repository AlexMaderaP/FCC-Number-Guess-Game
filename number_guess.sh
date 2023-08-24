#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

N=$(( RANDOM % 1000 + 1))

echo -e "\nEnter your username:"
read USERNAME

#Look for username
USER_INFO=$($PSQL "SELECT username, games_played, best_game FROM usernames WHERE username='$USERNAME'")
#if not found
if [[ -z $USER_INFO ]]
then
    #Print welcome message
    echo -e "Welcome, $USERNAME! It looks like this is your first time here."
    #insert new user
    GAMES_PLAYED=0
    BEST_GAME=0
    INSERT_USER=$($PSQL "INSERT INTO usernames(username,games_played,best_game) VALUES('$USERNAME',$GAMES_PLAYED,$BEST_GAME)")
else
    #otherwise print message
    echo "$USER_INFO" | sed 's/|/ /g' | (read USER GAMES_PLAYED BEST_GAME;
    echo "Welcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.")
fi

#Ask for number guess
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

#while not a number or not guessed
while [[ !($GUESS =~ ^[0-9]+$) ]]
do
    #increment times_guessed
    #if input is higher print lower message
    #if input is lower print higher message
    #if not a number
    if [[ !($GUESS =~ ^[0-9]+$) ]]
    then
        #print ask for number
        echo That is not an integer, guess again:
        read GUESS
    fi
    
done

#when guessed print successfull mesage
#increment games played 