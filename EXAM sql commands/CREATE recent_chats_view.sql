CREATE OR REPLACE VIEW recent_chats_view AS
SELECT 
    c.chat_id,
    u.username,
    u.email,
    c.title,
    c.ai_model_used,
    c.total_messages,
    c.created_at,
    c.last_activity
FROM chat_session c
JOIN users u ON c.user_id = u.user_id
WHERE c.created_at > SYSDATE - 7
AND c.is_active = 'Y'
ORDER BY c.last_activity DESC;


SELECT * FROM recent_chats_view;