-- HERE'S THE DEMOSTRATION OF NUMERIC FOR LOOP
-- SYNTAX: FOR loop_condition IN [REVERSE] lower_limit .. upper_limit LOOP
--              statement1...
--              statement2...
--              ....
--              statementn
--          END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    v_counter NUMBER;
BEGIN
    FOR v_counter IN REVERSE 1 .. 10 --PUT OR REMOVE [REVERSE] TO RUN THE LOOP REVERSE AND FORWORD DIRECTION
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_counter);
    END LOOP;
END;