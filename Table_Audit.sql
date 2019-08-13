-- HERE'S THE DEMONSTRTION OF TABLE AUDITING IN PL/SQL 
-- THIS IS THE EXTENDED PART OF TRIGGERS WHERE YOU CAN IDENTIFY
-- WHERE AND WHO IS APPLYING DDL OR DML OPERATION IN THE TABEL(AUDITING)

-- CREATING TABLE 
CREATE TABLE sh_audit
(
    new_name VARCHAR2(30),
    old_name VARCHAR2(30),
    user_name VARCHAR2(30),
    entry_date VARCHAR2(30),
    operation VARCHAR2(30)
);
/
-- WRITING THE BLOCK OF CODE TO UNDERSTAND THE CONCEPT OF AUDITING
CREATE OR REPLACE TRIGGER superheros_audit
BEFORE INSERT OR DELETE OR UPDATE ON superheros
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR(30);
    v_date VARCHAR(30);
BEGIN
    SELECT user, TO_CHAR(sysdate,'DD/MM/YYYY HH24:MI:SS') INTO v_user, v_date FROM dual;
    IF INSERTING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(:NEW.sh_name, NULL, v_user, v_date, 'Insert');
    ELSIF DELETING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(NULL, :OLD.sh_name,v_user, v_date, 'Delete');
    ELSIF UPDATING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(:NEW.sh_name, :OLD.sh_name,v_user, v_date, 'Update');
    END IF;
END;
/
-- CHECKING WHAT'S IN sh_audit TABLE
SELECT * FROM sh_audit;
INSERT INTO superheros VALUES('Superman');
UPDATE superheros SET sh_name = 'Ironman' WHERE sh_name = 'Superman';
DELETE FROM superheros WHERE sh_name = 'Ironman';























