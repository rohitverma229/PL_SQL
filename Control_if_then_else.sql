-- HERE'S THE EXAMPLE TO DEMONSTRATE THE 'IF THEN ELSE' STATEMENT
-- SYNTAX: IF condition THEN
--              statement1...
--         ELSE
--              statement2...
--         END IF;

SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER:= &enter_a_number;  --That's how to take value from user
BEGIN
    IF MOD(v_num,2)=0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num||' is even number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num||' is odd number');
    END IF;
END;
