#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE games, teams")"

#loops for team names in the 'winner' and 'opponent' columns.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #get 'winner' column for teams table.
  if [[ $WINNER != "winner" ]]
    then
      #get team_id
      WINNER_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        #if not found
        if [[ -z $WINNER_NAME ]]
          then
            #set to null
            WINNER_NAME=null
        fi
    #insert winner
    echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  fi
    #get 'opponent' column for teams table.
    if [[ $OPPONENT != "opponent" ]]
      then
        #get team_id
        OPPONENT_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
          #if not found
          if [[ -z $OPPONENT_NAME ]]
            then
               #set to null
                OPPONENT_NAME=null
          fi
      #insert opponent
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  fi
#get 'all' columns for games table.
  if [[ $YEAR != "year" ]]
    then
      #get winner_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      #get opponent_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR,'$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done