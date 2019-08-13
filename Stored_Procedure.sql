-- HERE'S THE DEMONSTRATION OF THE STORED PROCEDURE IN PL/SQL
-- SYNTAX:  CREATE [OR REPLACE] PROCEDURE procedure_name(parameter1,parameter2,...)
--          IS
--          Declare variable, constant etc.
--          BEGIN
--              Executable statements
--          END procedure_name;

-- WRITING DEFINITION OF THE STORED PROCEDURE
CREATE OR REPLACE PROCEDURE my_procedure
IS
    var_name VARCHAR2(20):= 'My Procedure';
    var_web VARCHAR2(20):= 'Myweb.com';
BEGIN
    DBMS_OUTPUT.PUT_LINE('This is ' || var_name || ' from ' ||var_web);
END my_procedure;
/
SET SERVEROUTPUT ON;
EXECUTE my_procedure;

/
SET SERVEROUTPUT ON;
BEGIN
  my_procedure;
END;
















