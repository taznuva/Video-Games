CREATE TABLE game_data (
	 title_id INT NOT NULL,
	 title VARCHAR NOT NULL,
	 platform VARCHAR NOT NULL,
	 release_date DATE NOT NULL,
	 score INT NOT NULL,
	 user_score INT NOT NULL,
     developer VARCHAR NOT NULL,
     genre VARCHAR NOT NULL,
     critics INT NOT NULL,
	 users INT NOT NULL,
	 franchise VARCHAR NOT NULL,
     PRIMARY KEY (title_id)
	);
	
	DROP TABLE sales_data;
	
CREATE TABLE sales_data (
	title_id INT NOT NULL,
	title VARCHAR NOT NULL,
	platform VARCHAR NOT NULL,
	year_of_release INT,
	genre VARCHAR,
	publisher VARCHAR,
	na_sales DECIMAL,
	eu_sales DECIMAL,
	jp_sales DECIMAL,
	other_sales DECIMAL,
	global_sales DECIMAL,
	critic_score INT,
	critic_count INT,
	user_score DECIMAL,
	user_count INT,
	developer VARCHAR,
	rating VARCHAR,
    PRIMARY KEY (title_id)
	);
	
SELECT * FROM game_data;
SELECT * FROM sales_data;


SELECT gd.title_id,
    gd.title,
	gd.platform,
	gd.release_date,
	gd.score,
	gd.user_score,
	gd.developer,
	gd.genre,
	gd.critics,
	gd.users,
	gd.franchise,
	sd.global_sales
INTO full_data
FROM game_data as gd
LEFT JOIN sales_data as sd
ON gd.title = sd.title AND gd.platform = sd.platform;

SELECT * FROM sales_data;
SELECT * FROM full_data;