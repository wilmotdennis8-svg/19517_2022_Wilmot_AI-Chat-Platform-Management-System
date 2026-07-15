
INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1000, 'Python Programming Help', 'GPT-4');

INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1000, 'Professional Cover Letter', 'Claude 3');

INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1000, 'SQL Query Optimization', 'GPT-5');

INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1000, 'AI Research Papers', 'Gemini');

INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1000, 'Code Review Request', 'Claude 3');


INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1001, 'Math Problem Solving', 'Gemini');

INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1001, 'Essay Writing Tips', 'GPT-4');


INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1002, 'Data Analysis Help', 'GPT-4');


INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1003, 'Algebra Help', 'Gemini');


INSERT INTO chat_session (chat_id, user_id, title, ai_model_used)
VALUES (chat_seq.NEXTVAL, 1004, 'Resume Writing Help', 'GPT-4');


SELECT c.chat_id, u.username, c.title, c.ai_model_used, c.created_at
FROM chat_session c
JOIN users u ON c.user_id = u.user_id
ORDER BY c.created_at;