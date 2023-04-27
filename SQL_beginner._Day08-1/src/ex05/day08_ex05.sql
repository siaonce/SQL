SHOW TRANSACTION ISOLATION LEVEL;
BEGIN; --Session 1
SELECT SUM(rating) FROM pizzeria; --before commit, rating 21.9
SELECT SUM(rating) FROM pizzeria;  --after commit on session 2, rating 19.9
COMMIT WORK; --commit
SELECT SUM(rating) FROM pizzeria; --after commit on session 1, rating 19.9

SHOW TRANSACTION ISOLATION LEVEL;
BEGIN; --Session 2
UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut'; --update rating on 1
COMMIT WORK; --commit
SELECT SUM(rating) FROM pizzeria; --after commit, rating 19.9