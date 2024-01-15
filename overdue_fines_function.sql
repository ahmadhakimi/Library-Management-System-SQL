DROP FUNCTION overdue_fines_cal; 

-- overdue_fines_function.sql
CREATE OR REPLACE FUNCTION overdue_fines_cal (
    borrow_date BORROW.BorrowDate%TYPE, 
    return_date BORROW.ReturnDate%TYPE, 
    actual_date BORROW.ActualReturnDate%TYPE
) 
RETURN NUMBER 
AS 
    days_overdue NUMBER (2); 
    total_fines NUMBER (4,2); 
BEGIN 
    days_overdue := TRUNC(actual_date) - TRUNC(return_date);

   days_overdue := TRUNC(actual_date) - TRUNC(return_date);

    if days_overdue <= 0 THEN
        total_fines := 0;
    elsif days_overdue >= 1 AND days_overdue <= 15 THEN
        total_fines := 25;
    elsif days_overdue <= 30 THEN
        total_fines := 30;
    else
        total_fines := 30 + (days_overdue * 0.5);
    END IF;


    DBMS_OUTPUT.PUT_LINE('You have ' || days_overdue || ' days overdue.'); 
    DBMS_OUTPUT.PUT_LINE('You must pay RM ' || total_fines || ' and must return the book the way you borrowed it!!!'); 

    return total_fines; 
END; 
/
