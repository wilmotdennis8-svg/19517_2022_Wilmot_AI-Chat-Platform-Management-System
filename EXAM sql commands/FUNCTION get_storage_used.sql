CREATE OR REPLACE FUNCTION get_storage_used (
    p_user_id IN NUMBER
)
RETURN NUMBER
AS
    v_storage NUMBER;
BEGIN
    SELECT NVL(SUM(file_size_mb), 0) INTO v_storage
    FROM files
    WHERE user_id = p_user_id;
    RETURN v_storage;
END get_storage_used;
/


DECLARE
    v_storage NUMBER;
BEGIN
    v_storage := get_storage_used(1000);  
    DBMS_OUTPUT.PUT_LINE('Wilmot storage used: ' || v_storage || ' MB');
    
    v_storage := get_storage_used(1002);  
    DBMS_OUTPUT.PUT_LINE('John storage used: ' || v_storage || ' MB');
END;
/