BEGIN TRANSACTION; --Session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before coomit, rating 5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; --update session 1 on 4
COMMIT WORK; --download update
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit, rating 3.6

BEGIN TRANSACTION; --Session 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before commit, rating 5
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; --update session 2 on 3.6
COMMIT WORK; --download update
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit, rating 3.6