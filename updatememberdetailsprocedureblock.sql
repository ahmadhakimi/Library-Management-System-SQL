SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    v_MemberID NUMBER := &member_id; 
    v_NewEmail VARCHAR2(30) := '&new_email';
    v_NewAddress VARCHAR2(20) := '&new_address'; 
    v_NewPhone VARCHAR2(12) := '&new_phone'; 
BEGIN
    UpdateMemberDetails(
        p_member_id => v_MemberID,
        p_new_email => v_NewEmail,
        p_new_address => v_NewAddress,
        p_new_phone => v_NewPhone
    );
END;
/