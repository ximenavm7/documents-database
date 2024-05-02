TRUNCATE TABLE term;
INSERT INTO term (id, term) VALUES (%s,%s)
ON DUPLICATE KEY UPDATE term = %s;