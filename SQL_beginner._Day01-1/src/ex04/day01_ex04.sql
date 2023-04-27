SELECT person_id
FROM person_order AS person_id
WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id
FROM person_visits AS person_id
WHERE visit_date = '2022-01-07';