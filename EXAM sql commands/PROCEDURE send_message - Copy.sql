CREATE OR REPLACE PROCEDURE send_message (
    p_chat_id        IN NUMBER,
    p_user_message   IN CLOB,
    p_ai_response    OUT CLOB,
    p_message_id     OUT NUMBER,
    p_status         OUT VARCHAR2
) AS
    v_user_id NUMBER;
    v_message_id NUMBER;
    v_token_usage NUMBER;
    v_response_time_ms NUMBER;
    v_ai_model VARCHAR2(50);
BEGIN
   
    SELECT user_id, ai_model_used INTO v_user_id, v_ai_model
    FROM chat_session WHERE chat_id = p_chat_id;
    
    
    v_message_id := message_seq.NEXTVAL;
    INSERT INTO message (message_id, chat_id, sender_type, message_content)
    VALUES (v_message_id, p_chat_id, 'USER', p_user_message);
    
    
    v_token_usage := ROUND(DBMS_RANDOM.VALUE(100, 500));
    v_response_time_ms := ROUND(DBMS_RANDOM.VALUE(200, 2000));
    
    
    p_ai_response := 'I received your message: ' || SUBSTR(p_user_message, 1, 50) || 
                     '... Here is my response. In a real implementation, this would come from the AI model API.';
    
   
    INSERT INTO message (message_id, chat_id, sender_type, message_content, ai_model_used, token_usage, response_time_ms)
    VALUES (message_seq.NEXTVAL, p_chat_id, 'AI', p_ai_response, v_ai_model, v_token_usage, v_response_time_ms);
    
   
    UPDATE chat_session 
    SET total_messages = total_messages + 2,
        last_activity = CURRENT_TIMESTAMP
    WHERE chat_id = p_chat_id;
    
    p_status := 'SUCCESS';
    p_message_id := v_message_id;
    
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        p_status := 'Chat not found.';
        p_message_id := NULL;
        p_ai_response := NULL;
    WHEN OTHERS THEN
        ROLLBACK;
        p_status := 'Error: ' || SQLERRM;
        p_message_id := NULL;
        p_ai_response := NULL;
END send_message;
/


DECLARE
    v_ai_response CLOB;
    v_message_id NUMBER;
    v_status VARCHAR2(50);
BEGIN
    send_message(
        1010,  
        'Hello! This is a test message from the procedure.',
        v_ai_response,
        v_message_id,
        v_status
    );
    DBMS_OUTPUT.PUT_LINE('Message ID: ' || v_message_id);
    DBMS_OUTPUT.PUT_LINE('Status: ' || v_status);
    DBMS_OUTPUT.PUT_LINE('AI Response: ' || SUBSTR(v_ai_response, 1, 100) || '...');
END;
/