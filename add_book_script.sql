SET SERVEROUTPUT ON 
SET VERIFY OFF 


ACCEPT newBookTitle  PROMPT "Enter the title of the new Book: "; 
ACCEPT newBookGenre  PROMPT "What is the genre of the Book: "; 
ACCEPT newBookISBN  PROMPT "What is the Book's ISBN (13 digit): ";
ACCEPT newBookYear  PROMPT "Year new Book published?: "; 
ACCEPT newPublisherName  PROMPT "Name of the Book's author "; 

DECLARE
  newBookID NUMBER(5);

BEGIN   
    newBookID := addBook('&newBookTitle', '&newBookISBN', '&newBookGenre', '&newBookYear', '&newPublisherName'); 

    DBMS_OUTPUT.PUT_LINE('New Book ID: ' || newBookID);
    DBMS_OUTPUT.PUT_LINE('Book Title: ' || '&newBookTitle');
    DBMS_OUTPUT.PUT_LINE('Book Genre: ' || '&newBookGenre');
    DBMS_OUTPUT.PUT_LINE('Book Year: ' || '&newBookYear');
    DBMS_OUTPUT.PUT_LINE('Book ISBN: ' || '&newBookISBN');
    DBMS_OUTPUT.PUT_LINE('Publisher: ' || '&newPublisherName');
END;
/
