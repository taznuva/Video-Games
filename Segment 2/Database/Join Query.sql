--Join Query--
SELECT * FROM games;
SELECT * FROM sales;


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
FROM games as gd
LEFT JOIN sales as sd
ON gd.title = sd.title AND gd.platform = sd.platform;

SELECT * FROM sales;
SELECT * FROM full_data;