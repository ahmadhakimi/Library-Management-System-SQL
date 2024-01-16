SET SERVEROUTPUT ON;

ACCEPT book_id NUMBER PROMPT 'Enter Book ID: ';

DECLARE
    v_MemberID NUMBER := 1428; 
    v_BookID NUMBER;
BEGIN
    
    v_BookID := &book_id;

    BorrowBook(
        p_MemberID => v_MemberID,
        p_BookID => v_BookID
    );
END;
/