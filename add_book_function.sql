DROP SEQUENCE add_book_id; 
DROP SEQUENCE add_publisher_id; 
DROP FUNCTION addBook;  

CREATE SEQUENCE add_book_id 
    START WITH 12300
    INCREMENT BY 1
    NOCACHE
    NOCYCLE; 

CREATE SEQUENCE add_publisher_id 
    START WITH 200000
    INCREMENT BY 1 
    NOCACHE 
    NOCYCLE; 

CREATE OR REPLACE FUNCTION addBook (
    f_title IN BOOK.Title%TYPE, 
    f_isbn IN BOOK.ISBN%TYPE, 
    f_genre IN BOOK.Genre%TYPE, 
    f_year IN BOOK.Year%TYPE, 
    f_publisher_name IN PUBLISHER.PublisherName%TYPE
) RETURN NUMBER 
AS 
    f_book_id NUMBER(5); 
    f_publisher_id NUMBER(6); 
BEGIN 
    SELECT add_book_id.NEXTVAL INTO f_book_id FROM DUAL;
    SELECT add_publisher_id.NEXTVAL INTO f_publisher_id FROM DUAL;

    INSERT INTO PUBLISHER (PublisherID, PublisherName) VALUES (f_publisher_id, f_publisher_name); 
    
    INSERT INTO BOOK (BookID, Title, ISBN, Genre, Year, PublisherID) 
    VALUES (f_book_id, f_title, f_isbn, f_genre, f_year, f_publisher_id); 

    RETURN f_book_id; 
END; 
/