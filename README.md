THIS IS GROUP PROJECT FOR INFO 2303 DATABASE PROGRAMMING SQL QUERIES 

LIBRARY MANAGEMENT SYSTEM (LMS) 

Adam Harith bin Abdul Rahim 2218641
Adham Harith Bin Zahari 2213945
Ahmad Hakimi Bin Ahmad Rasidi 2013793
Adam Azraei Bin Azhar 2215967

Supervised by
Prof. Ts. Dr. Mira Kartiwi

The proposal of our database project is based on the library management system where there are
five(5) different entities and its attributes with the corresponding datatype such as:
1. Member
  a. MemberID(PK) (NUMBER (6))
  b. fname(VARCHAR(15))
  c. lname(VARCHAR(15))
  d. Phone(NUMBER (11))
  e. Address (VARCHAR2 (20))
  f. Email (VARCHAR2(15))
- The member attributes consist of memberID as unique ID, the name including first name
and last name, phone number, address and also email
2. Book
  a. BookID (PK) (NUMBER (5))
  b. Title (VARCHAR(10))
  c. ISBN (NUMBER (13))
  d. Year (DATE)
  e. Genre (VARCHAR(10))
  f. publisherID (FK References Publisher)
- Every book has its own unique ID as BookID, the title, ISBN number, year published,
genre and also the publisherID that refer to the publisher of the book.
3. Borrow
  a. BorrowID (PK) (NUMBER (4))
  b. BorrowDate (DATE)
  c. ReturnDate (DATE)
  d. StaffID( FK References Staff)
  e. MemberID(FK References Member)
  f. BookID (FK Referemces Book)
- The attributes for Borrow entity is BorrowID (unique), borrowing date as BorrowDate,
date of book return (ReturnDate), the StaffID that manage the borrowing process,
MemberID of the person who borrowing the books and lastly BookID for each book
borrowed
4. Publisher
  a. publisherID (PK) (NUMBER (6))
  b. publisherName (VARCHAR2(15))
  c. pubAddress (VARCHAR2(15))
  d. pubEmail (VARCHAR(10))
- The publisher has own unique ID, the name, the address and lastly the email
5. Staff
  a. StaffID (PK) (NUMBER (6))
  b. StaffName (VARCHAR2(15)))
  c. Position (VARCHAR2(10))
  d. StaffEmail(VARCHAR2(10))
  e. StaffPhone (NUMBER (10))
- The staff has attributes of StaffID as unique ID, name as StaffName, Position of the staff,
email as StaffEmail and staff’s phone number as StaffPhone.
