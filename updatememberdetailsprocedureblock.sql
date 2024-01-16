SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    v_MemberID NUMBER := &member_id;
    v_NewEmail VARCHAR2(30);
    v_NewAddress VARCHAR2(20);
    v_NewPhone VARCHAR2(12);
BEGIN

    v_NewEmail := '&new_email';
    v_NewAddress := '&new_address';
    v_NewPhone := '&new_phone';

     IF v_NewEmail = 'NULL' THEN
        SELECT Email INTO v_NewEmail FROM MEMBER WHERE MemberID = v_MemberID;
    END IF;

    IF v_NewAddress = 'NULL' THEN
        SELECT Address INTO v_NewAddress FROM MEMBER WHERE MemberID = v_MemberID;
    END IF;

    IF v_NewPhone = 'NULL' THEN
        SELECT Phone INTO v_NewPhone FROM MEMBER WHERE MemberID = v_MemberID;
    END IF;

    
    IF v_NewEmail IS NOT NULL OR v_NewAddress IS NOT NULL OR v_NewPhone IS NOT NULL THEN
        UpdateMemberDetails(
            p_member_id => v_MemberID,
            p_new_email => v_NewEmail,
            p_new_address => v_NewAddress,
            p_new_phone => v_NewPhone
        );
    END IF;
END;
/
