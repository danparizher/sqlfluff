CREATE TRIGGER x
BEFORE UPDATE OF z ON y
BEGIN
SELECT RAISE (ROLLBACK, 'updating z not allowed');
END;