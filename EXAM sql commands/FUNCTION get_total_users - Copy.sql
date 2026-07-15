CREATE OR REPLACE FUNCTION get_total_users
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM users WHERE is_active = 'Y';
    RETURN v_count;
END get_total_users;
/


BEGIN
    DBMS_OUTPUT.PUT_LINE('Total Active Users: ' || get_total_users());
END;
/