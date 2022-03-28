SELECT * FROM full_data

SELECT COUNT (title_id)
FROM full_data;

DROP TABLE final_game_data 

CREATE TABLE final_game_data (
	game_name VARCHAR NOT NULL,
	franchise VARCHAR NOT NULL,
	platform VARCHAR NOT NULL,
	release_year INT NOT NULL,
	years_since INT NOT NULL,
	first_release_year INT NOT NULL,
	main_genre VARCHAR NOT NULL,
	tier_by_score VARCHAR NOT NULL,
	critics INT NOT NULL,
	critic_score INT NOT NULL,
	users INT NOT NULL,
	user_score DECIMAL(2) NOT NULL,
	developer VARCHAR NOT NULL,
	global_sales DECIMAL(4),
	other_info VARCHAR NOT NULL
);

SELECT * FROM final_game_data

SELECT final_game_data.game_name, 
	final_game_data.franchise,
	final_game_data.platform, 
	full_data.release_date,
	final_game_data.release_year,
	final_game_data.years_since,
	final_game_data.first_release_year,
	final_game_data.main_genre,
	final_game_data.tier_by_score,
	final_game_data.critics,
	final_game_data.critic_score,
	final_game_data.users,
	final_game_data.user_score,
	final_game_data.developer,
	final_game_data.global_sales,
	final_game_data.other_info
INTO final_dataset
FROM full_data
RIGHT JOIN final_game_data 
ON full_data.title = final_game_data.game_name AND full_data.platform = final_game_data.platform ;

DROP TABLE final_dataset;
SELECT * FROM final_dataset

SELECT COUNT (game_name)
FROM final_dataset;