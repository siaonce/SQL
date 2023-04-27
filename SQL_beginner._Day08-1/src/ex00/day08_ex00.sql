--Session 1
BEGIN; --Starting transaction
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; --changing rating
SELECT * FROM pizzeria; --rating 5
COMMIT WORK; --download transaction

--Session 2

--Before commit 
SELECT * FROM pizzeria; --rating 4.6

--After commit
SELECT * FROM pizzeria; --rating 5