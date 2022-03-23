# Entertainment_project

## Initial Clean up: 
Sample data set for machine learning module:
1) Dropping Player column.
2) Clean & use 2021 Sales per game csv data for additional info / join requirement (postgres). 
3) All potential dupicate values are an exact match for easy filtering, reducing numerical/grammatical errors.
4) "Release Date" column formated mm-dd-yy.
5) Format "Genere" column for grouping.
6) Create new column determining "Franchise"
7) Verify "Critics" column usage. 
8) Line or Logistic Regression model for determining Developer/Franchise success rate.

## Understanding our raw data file - Data columns:
* name: The name of the game
* platform: Platform it was released
* r-date: date it was released
* score: average score given by critics (metascore)
* user score: average score given by users in the website
* developer: game developer
* genre: genre of the game (can be multiple)
* players: Number of players (DROP THIS COLUMN due to missing information)
* critics: number of critics reviewing the game
* users: Number of metacritic users that reviewed the game


## Table Data: 
* Critic Scores/User Scores by Developer 
* Critic Scores/User Scores by Platform 
* Developer by Release Date 
* Franchise Scores by Release Date 
* Franchise by Critics
* Critics/Score by Genere 
