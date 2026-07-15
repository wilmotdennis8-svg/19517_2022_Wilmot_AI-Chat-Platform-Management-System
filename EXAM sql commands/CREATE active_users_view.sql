CREATE OR REPLACE VIEW active_users_view AS
SELECT 
    u.user_id,
    u.username,
    u.email,
    u.first_name || ' ' || u.last_name AS full_name,
    LISTAGG(r.role_name, ', ') WITHIN GROUP (ORDER BY r.role_name) AS roles,
    u.created_at,
    u.last_login,
    u.is_active
FROM users u
JOIN user_role ur ON u.user_id = ur.user_id
JOIN roles r ON ur.role_id = r.role_id
WHERE u.is_active = 'Y'
GROUP BY u.user_id, u.username, u.email, u.first_name, u.last_name, 
         u.created_at, u.last_login, u.is_active
ORDER BY u.user_id;

SELECT * FROM active_users_view;