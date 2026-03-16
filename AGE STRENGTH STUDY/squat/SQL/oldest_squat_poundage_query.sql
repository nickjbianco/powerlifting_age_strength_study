WITH squat_age_ranked AS (
	SELECT 
		weightclasslbs, sex, age, squatlbs, 
		ROW_NUMBER() OVER(PARTITION BY weightclasslbs, sex ORDER BY age DESC, squatlbs DESC) AS rn
	FROM top_100_squats
	WHERE age IS NOT NULL
)

SELECT 
	weightclasslbs, sex, age, squatlbs
FROM squat_age_ranked
WHERE rn = 1;