CREATE OR REPLACE PROCEDURE UpdateMemberDetails(
    p_member_id IN NUMBER,
    p_new_email IN VARCHAR2,
    p_new_address IN VARCHAR2,
    p_new_phone IN VARCHAR2
)
IS
    v_member_count NUMBER;
BEGIN
    
    SELECT COUNT(*)
    INTO v_member_count
    FROM member
    WHERE memberid = p_member_id;

    IF v_member_count > 0 THEN
        
        UPDATE member
        SET
            email = p_new_email,
            address = p_new_address,
            phone = p_new_phone
        WHERE memberid = p_member_id;

        DBMS_OUTPUT.PUT_LINE('Member details updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Member not found in our database.');
    END IF;
END;
/