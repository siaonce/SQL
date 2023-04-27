WITH CTE AS (SELECT GENERATE_SERIES('2022-01-01'::timestamp, '2022-01-10', interval '1 day') AS missing_date)
SELECT missing_date::date
FROM CTE
LEFT JOIN (SELECT visit_date
		   FROM person_visits
		   WHERE person_id = 1 OR person_id = 2) AS miss
		   ON missing_date = miss.visit_date WHERE miss.visit_date IS NULL
ORDER BY missing_date ASC;