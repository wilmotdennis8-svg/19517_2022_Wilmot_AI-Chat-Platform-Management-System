CREATE OR REPLACE FUNCTION get_avg_response_time
RETURN NUMBER
AS
    v_avg NUMBER;
BEGIN
    SELECT ROUND(AVG(response_time_ms), 2) INTO v_avg
    FROM message
    WHERE sender_type = 'AI' AND response_time_ms IS NOT NULL;
    RETURN v_avg;
END get_avg_response_time;
/


BEGIN
    DBMS_OUTPUT.PUT_LINE('Average AI Response Time: ' || get_avg_response_time() || ' ms');
END;
/