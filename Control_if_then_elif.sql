-- HERE'S THE EXAMPLE TO DEMONSTRATE THE 'IF THEN ELSE' STATEMENT
-- SYNTAX: IF condition THEN
--              statement1...
--         ELSIF
--              statement2...
--         ELSE
--              statement3...
--         END IF;

SET SERVEROUTPU ON;
DECLARE
    v_place VARCHAR2(20):= '&ENTER_PLACE';
BEGIN
    IF v_place = 'metropolice' THEN
        DBMS_OUTPUT.PUT_LINE('CITY IS PROTECTED BY SUPERMAN');
    ELSIF v_place = 'dc' THEN
        DBMS_OUTPUT.PUT_LINE('CITY IS PROTECTED BY BATMAN');
    ELSE
        DBMS_OUTPUT.PUT_LINE('CALL THE AVENGERS');
    END IF;
    DBMS_OUTPUT.PUT_LINE('THANKS FOR CONNECTING US');
END;