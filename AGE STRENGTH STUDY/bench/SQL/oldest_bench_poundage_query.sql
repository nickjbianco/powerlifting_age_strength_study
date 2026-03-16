WITH bench_age_ranked AS (
	SELECT 
		weightclasslbs, sex, age, benchlbs, 
		ROW_NUMBER() OVER(PARTITION BY weightclasslbs, sex ORDER BY age DESC, benchlbs DESC) AS rn
	FROM top_100_benches
	WHERE age IS NOT NULL
)

SELECT 
	weightclasslbs, sex, age, benchlbs
FROM bench_age_ranked
WHERE rn = 1;