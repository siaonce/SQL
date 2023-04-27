WITH visit AS (SELECT pizzeria.name
			  FROM pizzeria
			  JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
			  JOIN person ON person_visits.person_id = person.id
			  WHERE person.name = 'Andrey'),
	po AS (SELECT pizzeria.name
			 FROM pizzeria
			 JOIN menu ON pizzeria.id = menu.pizzeria_id
		     JOIN person_order ON menu.id = person_order.menu_id
		      JOIN person ON person_order.person_id = person.id
		      WHERE person.name = 'Andrey')
SELECT visit.name AS pizzeria_name
FROM visit
EXCEPT
SELECT po.name AS pizzeria_name
FROM po;