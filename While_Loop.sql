-- HERE'S THE EXAMPLE TO DEMONSTRATE ABOUT THE 'WHILE LOOP'
-- SYNTAX:  WHILE condition LOOP
--              statement1....
--              statement2....
--          END LOOP;

SET SERVEROUTPUT ON;
DECLARE 
    v_num NUMBER:= &ENTER_NUMBER;
    v_counter NUMBER:=1;
    v_result NUMBER;
BEGIN
    WHILE v_counter <= 10 LOOP
        v_result:= v_num * v_counter;
        DBMS_OUTPUT.PUT_LINE(v_num|| ' X '||v_counter|| ' = '||v_result);
        v_counter:= v_counter+1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('OUTSIDE THE LOOP');
END; 