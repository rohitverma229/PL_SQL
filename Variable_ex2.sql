-- HOW TO INITILIZE VARIABLE USING "SELECT INTO" STATEMENT IN ANONYMOUS BLOCK OF PL/SQL
 create table employees
 (
	emp_id int not null,
    emp_name varchar(20) not null,
    salary int not null,
    dept_id int,
    primary key (emp_id)
 );
 insert into employees (emp_id, emp_name, salary, dept_id) values (1,'Ethan Hunt', 5000, 4);
 insert into employees (emp_id, emp_name, salary, dept_id) values (2,'Tony Montana', 6500, 1);
 insert into employees (emp_id, emp_name, salary, dept_id) values (3,'Sarah Connor', 8000, 5);
 insert into employees (emp_id, emp_name, salary, dept_id) values (4,'Rick Deckard', 7200, 3);
 insert into employees (emp_id, emp_name, salary, dept_id) values (5,'Martin Blank', 5600, null);
 insert into employees (emp_id, emp_name, salary, dept_id) values (6,'simons bistro', 6000, 1);
 insert into employees (emp_id, emp_name, salary, dept_id) values (7,'Janet Leverling', 5200, 5);
 insert into employees (emp_id, emp_name, salary, dept_id) values (8,'Steven Buchanan', 4750, 5);
 insert into employees (emp_id, emp_name, salary, dept_id) values (9,'Laura Callahan', 3850, null);
 insert into employees (emp_id, emp_name, salary, dept_id) values (10,'Nancy Davolio', 4800, 3);
 
select * from EMPLOYEES;
/ 
-- START WRITING QUERY HERE
SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER(8);
BEGIN
    SELECT salary INTO v_salary from EMPLOYEES
    WHERE emp_id = 1;
    DBMS_OUTPUT.PUT_LINE(v_salary);
END;
/
-- START WRITING ANOTHER QUERY FOR ACCESING VARIABLE USIGN "SELECT INTO" STATEMENT
DECLARE 
    v_salary NUMBER(8);
    v_name VARCHAR2(15);
BEGIN
    SELECT salary, emp_name INTO v_salary, v_name FROM EMPLOYEES
    WHERE emp_id = 2;
    DBMS_OUTPUT.PUT_LINE(v_name||' Has salary '||v_salary);
END;
