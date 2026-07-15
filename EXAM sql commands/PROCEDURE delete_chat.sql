CREATE OR REPLACE PROCEDURE delete_chat (
    p_chat_id    IN NUMBER,
    p_user_id    IN NUMBER,
    p_message    OUT VARCHAR2
) AS
    v_user_role VARCHAR2(30);
    v_owner_id NUMBER;
BEGIN
   
    SELECT r.role_name INTO v_user_role
    FROM users u
    JOIN user_role ur ON u.user_id = ur.user_id
    JOIN roles r ON ur.role_id = r.role_id
    WHERE u.user_id = p_user_id AND ROWNUM = 1;
    
    
    SELECT user_id INTO v_owner_id FROM chat_session WHERE chat_id = p_chat_id;
    
    IF v_owner_id != p_user_id AND v_user_role != 'ADMIN' THEN
        p_message := 'You do not have permission to delete this chat.';
        RETURN;
    END IF;
    
   
    IF v_user_role = 'ADMIN' THEN
        DELETE FROM chat_session WHERE chat_id = p_chat_id;
        p_message := 'Chat permanently deleted by ADMIN.';
    ELSE
        UPDATE chat_session SET is_active = 'N' WHERE chat_id = p_chat_id;
        p_message := 'Chat archived successfully.';
    END IF;
    
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_message := 'Chat not found.';
    WHEN OTHERS THEN
        ROLLBACK;
        p_message := 'Failed to delete chat: ' || SQLERRM;
END delete_chat;
/


DECLARE
    v_message VARCHAR2(200);
BEGIN
    delete_chat(
        1010,  
        1005,  
        v_message
    );
    DBMS_OUTPUT.PUT_LINE('Message: ' || v_message);
END;
/