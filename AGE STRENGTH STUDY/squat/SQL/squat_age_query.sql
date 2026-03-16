SELECT 
	weightclasslbs, sex, 
	MAX(squatlbs) AS max_squat, 
	ROUND(AVG(squatlbs),2) AS avg_squat, 
	MAX(age) AS oldest, 
	FLOOR(AVG(age)) as avg_age, 
	MIN(age) as youngest
FROM top_100_squats
GROUP BY weightclasslbs, sex
ORDER BY weightclasslbs, sex;