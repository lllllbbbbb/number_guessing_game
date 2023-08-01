#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

CHECK_USERNAME(){
  QUERY_USERNAME=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME' LIMIT 1" )
  if [[ -z "$QUERY_USERNAME" ]]; then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USERNAME=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")
  else
    echo "$($PSQL "SELECT COUNT(game_id), MIN(guesses) FROM games_info FULL JOIN users ON games_info.player = users.user_id WHERE name = '$USERNAME'")" | while IFS='|' read SUM GUESS
    do
    echo "Welcome back, $USERNAME! You have played $SUM games, and your best game took $GUESS guesses."
    done
  fi
}

MAIN_FUNCTION(){
NUMBER_TO_GUESS=$(( $RANDOM % 1000 +1))
  declare -i COUNT=0
  echo "Enter your username:"
  read USERNAME
  CHECK_USERNAME
  echo "Guess the secret number between 1 and 1000:"
  while [[ $NUMBER != $NUMBER_TO_GUESS ]]
  do
  read NUMBER
  if ! [[ $NUMBER =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    else
    COUNT+=1
    if [[ $NUMBER -gt $NUMBER_TO_GUESS ]]; then
      echo "It's lower than that, guess again:"

    elif [[ $NUMBER -lt $NUMBER_TO_GUESS ]]; then
      echo "It's higher than that, guess again:"

    else
      GET_PLAYER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
      INSERT_TRIES=$($PSQL "INSERT INTO games_info (guesses, player) VALUES($COUNT, $GET_PLAYER_ID)")
      echo "You guessed it in $COUNT tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
      exit 0
    fi
  fi
  done
}
MAIN_FUNCTION
