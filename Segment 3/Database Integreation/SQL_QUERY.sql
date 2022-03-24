-- Creating first table
CREATE TABLE avg_high_scores (
	title VARCHAR NOT NULL,
	platform VARCHAR NOT NULL,
	"release-date" DATE,
	score INT,
	user_score DECIMAL,
	developer VARCHAR,
	genre VARCHAR,
	critics INT,
	users INT,
	franchise VARCHAR
);

-- Creating second table
CREATE TABLE vgsales_clean (
	title VARCHAR NOT NULL,
	platform VARCHAR NOT NULL,
	Year_of_Release INT,
	Genre VARCHAR,
	Publisher VARCHAR,
	NA_Sales DECIMAL,
	EU_Sales DECIMAL,
	JP_Sales DECIMAL,
	Other_Sales DECIMAL,
	global_sales DECIMAL,
	Critic_Score INT,
	Critic_Count INT,
	User_Score DECIMAL,
	User_Count INT,
	Developer VARCHAR,
	Rating VARCHAR
);

SELECT * FROM avg_high_scores;
SELECT * FROM vgsales_clean;

-- Join sample_franchises and vgsales_clean
SELECT sf.title,
	sf.platform,
	sf."release-date",
	sf.score,
	sf.user_score,
	sf.developer,
	sf.genre,
	sf.critics,
	sf.users,
	sf.franchise,
	vg.global_sales
INTO test_table
FROM sample_franchises as sf
LEFT JOIN vgsales_clean as vg
ON sf.title = vg.title AND sf.platform = vg.platform;

--------------------------------------------------------------
CREATE TABLE avg_high_scores (
	title VARCHAR NOT NULL,
	platform VARCHAR NOT NULL,
	"release-date" VARCHAR,
	score INT,
	user_score DECIMAL,
	developer VARCHAR,
	genre VARCHAR,
	critics INT,
	users INT,
	franchise VARCHAR
);

SELECT * FROM avg_high_scores;

-- Join sample_franchises and vgsales_clean
SELECT hs.title,
	hs.platform,
	hs."release-date",
	hs.score,
	hs.user_score,
	hs.developer,
	hs.genre,
	hs.critics,
	hs.users,
	hs.franchise,
	vg.global_sales
INTO test_table_2
FROM avg_high_scores as hs
LEFT JOIN vgsales_clean as vg
ON hs.title = vg.title AND hs.platform = vg.platform;

SELECT * FROM test_table_2;