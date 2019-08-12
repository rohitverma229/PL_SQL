-- HERE'S THE EXAMPLE TO DEMONSTRATE ABOUT THE 'SIMPLE LOOP'
-- SYNTAX:  LOOP
--              statement1....
--              statement2....
--          END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER:= &ENTER_A_NUMBER;
    v_counter NUMBER:=0;
    v_result NUMBER;
BEGIN
    LOOP
        v_counter:= v_counter+1;
        v_result:= v_num * v_counter;
        DBMS_OUTPUT.PUT_LINE(v_num||' X '|| v_counter ||' = '|| v_result);
        -- EXIT CONDITION
        IF v_counter >=10 THEN
            EXIT;
        END IF;
    END LOOP;
END;