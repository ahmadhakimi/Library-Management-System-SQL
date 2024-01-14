CREATE OR REPLACE FUNCTION overdue_fines_cal (
    borrow_date BORROW.BorrowDate%TYPE, 
    return_date BORROW.ReturnDate%TYPE
) 

RETURN NUMBER 
AS 
total_fines NUMBER (4,2); 

BEGIN 
    if return_date - borrow_date => 30 THEN
        total_fines := 25
    elsif return_date - borrow_date 