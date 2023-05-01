CREATE OR REPLACE FUNCTION check_update() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."updateAt" <= OLD."updateAt" THEN
    RETURN OLD; -- Discard the update
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_update_task ON "Task";
CREATE TRIGGER check_update_task
BEFORE UPDATE ON "Task"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

DROP TRIGGER IF EXISTS check_update_tag ON "Tag";
CREATE TRIGGER check_update_tag
BEFORE UPDATE ON "Tag"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

DROP TRIGGER IF EXISTS check_update_category ON "Category";
CREATE TRIGGER check_update_category
BEFORE UPDATE ON "Category"
FOR EACH ROW
EXECUTE PROCEDURE check_update();
