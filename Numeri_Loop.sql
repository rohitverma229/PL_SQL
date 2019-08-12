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
/
SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER:= &ENTER_NUMBER;
    v_counter NUMBER;
    v_result NUMBER:=0;
BEGIN
    FOR v_counter IN 1 .. 10 
    LOOP
        v_result:= v_counter * v_num;
        DBMS_OUTPUT.PUT_LINE(v_counter|| ' X ' ||v_num);
    END LOOP;
END;
