CREATE OR REPLACE PROCEDURE register_user (
    p_email         IN VARCHAR2,
    p_username      IN VARCHAR2,
    p_password      IN VARCHAR2,
    p_first_name    IN VARCHAR2,
    p_last_name     IN VARCHAR2,
    p_user_id       OUT NUMBER,
    p_message       OUT VARCHAR2
) AS
    v_email_exists NUMBER;
    v_username_exists NUMBER;
    v_new_user_id NUMBER;
BEGIN
    
    SELECT COUNT(*) INTO v_email_exists FROM users WHERE email = p_email;
    IF v_email_exists > 0 THEN
        p_message := 'Email already registered.';
        RETURN;
    END IF;
    

    SELECT COUNT(*) INTO v_username_exists FROM users WHERE username = p_username;
    IF v_username_exists > 0 THEN
        p_message := 'Username already taken.';
        RETURN;
    END IF;
    
    
    v_new_user_id := user_seq.NEXTVAL;
    INSERT INTO users (user_id, email, username, password_hash, first_name, last_name)
    VALUES (v_new_user_id, p_email, p_username, p_password, p_first_name, p_last_name);
    
    
    INSERT INTO user_role (user_id, role_id) VALUES (v_new_user_id, 2);
    
    COMMIT;
    
    p_user_id := v_new_user_id;
    p_message := 'Registration successful.';
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_message := 'Registration failed: ' || SQLERRM;
        p_user_id := NULL;
END register_user;
/


DECLARE
    v_user_id NUMBER;
    v_message VARCHAR2(200);
BEGIN
    register_user(
        'test@aichat.com',
        'test_user',
        'test1234',
        'Test',
        'User',
        v_user_id,
        v_message
    );
    DBMS_OUTPUT.PUT_LINE('User ID: ' || v_user_id);
    DBMS_OUTPUT.PUT_LINE('Message: ' || v_message);
END;
/

