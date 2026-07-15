CREATE OR REPLACE FUNCTION get_user_chat_count (
    p_user_id IN NUMBER
)
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count 
    FROM chat_session 
    WHERE user_id = p_user_id AND is_active = 'Y';
    RETURN v_count;
END get_user_chat_count;
/

-- Test the function
DECLARE
    v_count NUMBER;
BEGIN
    v_count := get_user_chat_count(1000);  -- Wilmot's user_id
    DBMS_OUTPUT.PUT_LINE('Wilmot has ' || v_count || ' active chats.');
    
    v_count := get_user_chat_count(1001);  -- Jane's user_id
    DBMS_OUTPUT.PUT_LINE('Jane has ' || v_count || ' active chats.');
END;
/