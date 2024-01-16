CREATE OR REPLACE PROCEDURE BorrowBook (
    p_MemberID IN NUMBER,
    p_BookID IN NUMBER
) AS
    v_BookStatus VARCHAR2(20);
BEGIN
    SELECT BookStatus INTO v_BookStatus FROM BOOK WHERE BookID = p_BookID;

    IF v_BookStatus = 'Available' THEN
            DBMS_OUTPUT.PUT_LINE('The Book is Available!.');
            ELSE
            DBMS_OUTPUT.PUT_LINE('Book is not available for borrowing.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Book not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END BorrowBook;
/

