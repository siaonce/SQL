BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE; --Session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before commit, rating 3.6
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit on session 2, rating 3.6
COMMIT WORK; --commit
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit on session 1, rating 3


BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE; --Session 2
UPDATE pizzeria SET rating = 3 WHERE name = 'Pizza Hut'; --update rating on 3
COMMIT WORK; --commit 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';  --after commit on session 1, rating 3