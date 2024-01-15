SET SERVEROUTPUT ON 
SET VERIFY OFF 

ACCEPT borrowId PROMPT "Enter the borrow id: "; 

DECLARE 
    borrow_date BORROW.BorrowDate%TYPE;
    return_date BORROW.ReturnDate%TYPE;
    actual_date BORROW.ActualReturnDate%TYPE;
    total_fines NUMBER(4,2); 
BEGIN 
    -- You need to fetch the relevant dates for the given borrowId from the BORROW table
    SELECT BorrowDate, ReturnDate, ActualReturnDate
    INTO borrow_date, return_date, actual_date
    FROM BORROW
    WHERE BorrowId = &borrowId;

    -- Debug statements to print the values
    DBMS_OUTPUT.PUT_LINE('Borrow Date: ' || TO_CHAR(borrow_date));
    DBMS_OUTPUT.PUT_LINE('Return Date: ' || TO_CHAR(return_date));
    DBMS_OUTPUT.PUT_LINE('Actual Return Date: ' || TO_CHAR(actual_date));

    total_fines := overdue_fines_cal(borrow_date, return_date, actual_date);

    DBMS_OUTPUT.PUT_LINE('Total Fines: RM ' || total_fines);
END; 
/
