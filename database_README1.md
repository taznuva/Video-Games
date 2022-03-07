# Entertainment_project

## Initial Clean up: 
Sample data set for machine learning module:
1) "Player" column either dropped or replace non-relevant data with "N/A"
2) "Player" column needs cross reference on official player label information. Create bucket intervals if needed. 
3) All potential dupicate values are an exact match for easy filtering, reducing numerical/grammatical errors.
4) "Release Date" column formated mm-dd-yy
5) Find & Compare unique values to duplicate values in "User" column.
(4a) ---> Determine if Users column is necessary post clean up. Use "User Score" column for analysis if not. 
5) Format "Genere" column for catagorical display.
6) Create new column determining "Franchise"
7) Potentially scrap data on sales per game.
8) Verify "Critics" column usage. 

## Table Data: 
* Critic Scores/User Scores by Developer 
* Critic Scores/User Scores by Platform 
* Developer by Release Date 
* Franchise Scores by Release Date 
* Franchise by Critics
* Critics/Score by Genere 
