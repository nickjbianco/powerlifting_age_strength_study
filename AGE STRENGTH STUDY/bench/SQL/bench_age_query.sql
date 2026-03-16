SELECT 
	weightclasslbs, sex, 
	MAX(benchlbs) AS max_bench, 
	ROUND(AVG(benchlbs),2) AS avg_bench, 
	MAX(age) AS oldest, 
	FLOOR(AVG(age)) as avg_age, 
	MIN(age) as youngest
FROM top_100_benches
GROUP BY weightclasslbs, sex
ORDER BY weightclasslbs, sex;