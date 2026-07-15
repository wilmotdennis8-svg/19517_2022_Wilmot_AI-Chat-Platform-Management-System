CREATE OR REPLACE PROCEDURE create_chat (
    p_user_id    IN NUMBER,
    p_title      IN VARCHAR2,
    p_ai_model   IN VARCHAR2 DEFAULT 'GPT-4',
    p_chat_id    OUT NUMBER,
    p_message    OUT VARCHAR2
) AS
    v_chat_id NUMBER;
    v_is_active CHAR(1);
BEGIN
   
    BEGIN
        SELECT is_active INTO v_is_active FROM users WHERE user_id = p_user_id;
        IF v_is_active = 'N' THEN
            p_message := 'User account is suspended.';
            RETURN;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_message := 'User not found.';
            RETURN;
    END;
    
    
    v_chat_id := chat_seq.NEXTVAL;
    INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
    VALUES (v_chat_id, p_user_id, p_title, p_ai_model);
    
    COMMIT;
    
    p_chat_id := v_chat_id;
    p_message := 'Chat created successfully.';
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_message := 'Failed to create chat: ' || SQLERRM;
        p_chat_id := NULL;
END create_chat;
/


DECLARE
    v_chat_id NUMBER;
    v_message VARCHAR2(200);
BEGIN
    create_chat(
        1005,  
        'Test Chat from Procedure',
        'GPT-4',
        v_chat_id,
        v_message
    );
    DBMS_OUTPUT.PUT_LINE('Chat ID: ' || v_chat_id);
    DBMS_OUTPUT.PUT_LINE('Message: ' || v_message);
END;
/

