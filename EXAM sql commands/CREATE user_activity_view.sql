CREATE OR REPLACE VIEW user_activity_view AS
SELECT 
    u.user_id,
    u.username,
    u.email,
    COUNT(DISTINCT c.chat_id) AS total_chats,
    COUNT(m.message_id) AS total_messages,
    NVL(SUM(m.token_usage), 0) AS total_tokens,
    ROUND(AVG(m.response_time_ms), 2) AS avg_response_ms,
    u.storage_used_mb,
    u.last_login
FROM users u
LEFT JOIN chat_session c ON u.user_id = c.user_id
LEFT JOIN message m ON c.chat_id = m.chat_id
WHERE u.is_active = 'Y'
GROUP BY u.user_id, u.username, u.email, u.storage_used_mb, u.last_login
ORDER BY total_messages DESC;


SELECT * FROM user_activity_view;