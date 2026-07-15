
INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1000, 1000, 5, 'Very helpful Python explanation!');

INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1000, 1001, 4, 'Good cover letter template.');

INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1000, 1002, 5, 'Excellent SQL optimization tips!');

INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1000, 1004, 4, 'Good code review suggestions.');


INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1001, 1005, 5, 'Perfect math explanation!');

INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1001, 1006, 3, 'Could have more examples.');


INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1002, 1007, 4, 'Very helpful data analysis steps.');


INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1003, 1008, 5, 'Made algebra easy to understand!');


INSERT INTO feedback (feedback_id, user_id, chat_id, rating, feedback_comment)
VALUES (feedback_seq.NEXTVAL, 1004, 1009, 4, 'Good resume tips, very practical.');


SELECT f.feedback_id, u.username, c.title, f.rating, f.feedback_comment
FROM feedback f
JOIN users u ON f.user_id = u.user_id
JOIN chat_session c ON f.chat_id = c.chat_id
ORDER BY f.created_at;