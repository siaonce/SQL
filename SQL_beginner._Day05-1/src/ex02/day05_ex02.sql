CREATE INDEX idx_person_name ON person (upper(name));
SET enable_seqscan = FALSE;

EXPLAIN ANALYZE
SELECT name
FROM person
WHERE upper(name) IS NOT NULL;