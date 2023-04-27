BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; --Session 1
SELECT SUM(rating) FROM pizzeria; --before commit, rating 19.9
SELECT SUM(rating) FROM pizzeria; --after commit on session 2, rating 19.9
COMMIT WORK; --commit
SELECT SUM(rating) FROM pizzeria; --after commit on session 1, rating 23.9

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; --Session 2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; --update rating on 5
COMMIT WORK; --commit
SELECT SUM(rating) FROM pizzeria; --after commit on session 1, rating 23.9