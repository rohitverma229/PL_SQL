-- HERE'S THE EXAMPLE TO EXPLAIN ABOUT THE "CONSTATNS" PL/SQL
-- SYNTEX {"CONSTANT_NAEM CONSTANT DATATYPE(DW):=VALUE"}
SET SERVEROUTPUT ON;
DECLARE
    v_pi CONSTANT NUMBER(7,6):= 3.141592;
BEGIN
    DBMS_OUTPUT.PUT_LINE('VALUE OF THE CONSTANT IS '||v_pi);
END;