INSERT INTO users (user_id, email, username, password_hash, first_name, last_name, is_active)
VALUES (user_seq.NEXTVAL, 'wilmot@aichat.com', 'wilmot_ai', 'wilmot1234', 'Wilmot', 'Wilmot', 'Y');


INSERT INTO user_role (user_id, role_id) 
VALUES (1000, 1);


SELECT u.user_id, u.username, u.email, r.role_name 
FROM users u
JOIN user_role ur ON u.user_id = ur.user_id
JOIN roles r ON ur.role_id = r.role_id
WHERE u.username = 'wilmot_ai';