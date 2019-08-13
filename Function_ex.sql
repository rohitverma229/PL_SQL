-- HERE'S THE DEMOSTRATION OF PL/SQL FUNCTION TO FIND THE AREA OF THE CIRCLE
-- SYNTAX:  CREATE [OR REPLACE] FUNCTION function_name
--              (parameter1, parameter2, ...) RETURN DATATYPE
--              IS
--          Declare variable, constant etc
--          BEGIN
--              EXECUTABLE STATEMENTS
--              RETURN(RETURN VALUE);
--          END;

-- WRITING THE FUNCTION DEFINITION BLOCK
CREATE OR REPLACE FUNCTION circle_area(radius NUMBER)
RETURN NUMBER
IS
    Pi CONSTANT NUMBER(7,3) DEFAULT 3.141;
    area NUMBER(7,3);
BEGIN
    area:= Pi*(radius * radius);
    RETURN(area);
END;
-- COMPILE THE ABOVE PROGRAM PRESS F5

-- NOW WRITING THE FUNCTION TO USE THIS FUNCTION
SET SERVEROUTPU ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE(circle_area(4));
END;
/
-- BY TAKING USER INPUT
SET SERVEROUTPUT ON;
DECLARE 
    v_num NUMBER:= &Enter_a_number;
BEGIN
    DBMS_OUTPUT.PUT_LINE(circle_area(v_num));
END;
