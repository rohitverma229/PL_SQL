-- HERE'S THE EXAMPLE TO DEMONSTRATE THE CONTROL STATMENT IN PL/SQL
-- BY USING 'IF THEN' CLAUSE
-- SYNTAX: IF condition THEN 
--              Statement1..
--              Statement2..
--         END IF;

SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER:=9; -- CHANGE THE VALUE OF 'v_num' VARIABLE TO CHECK 'IF THEN' STATEMNT IS WORKING OR NOT
BEGIN
    IF v_num <10 THEN
    DBMS_OUTPUT.PUT_LINE('INSIDE THE IF BLOCK(TRUE)');
END IF;
    DBMS_OUTPUT.PUT_LINE('OUTSIDE THE IF BLOCK');
END;
/

SET SERVEROUTPUT ON;
DECLARE
    v_website VARCHAR2(20):= 'ROHIT VERMA';
    v_author VARCHAR2(20):= 'SHUSHANT VERMA';
BEGIN
    IF v_website = 'Rohitverma.com' AND v_author = 'Rohitverma.com' THEN --TRY A DIFFERNT CONDITION HERE
    DBMS_OUTPUT.PUT_LINE('EVERTHING IS AWESOME');
    END IF;
DBMS_OUTPUT.PUT_LINE('GIVE THIS CODE A THUMBS UP');
END;