-- HERE'S THE ANOTHER EXAMPLE OF WHILE LOOP WITH 'BOOLEAN' DATATYPE

SET SERVEROUTPUT ON;
DECLARE
    v_test BOOLEAN:= TRUE;
    v_counter NUMBER:=0;
BEGIN
    WHILE v_test 
        LOOP
        v_counter:=v_counter+1;
        DBMS_OUTPUT.PUT_LINE(v_counter);
        -- LOOP TERMINATION
        IF v_counter = 10 THEN
        v_test:= FALSE;
        END IF;
    END LOOP;
END;