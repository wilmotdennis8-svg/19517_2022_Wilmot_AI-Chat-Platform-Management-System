CREATE OR REPLACE TRIGGER trg_update_chat_activity
AFTER INSERT ON message
FOR EACH ROW
BEGIN
    UPDATE chat_session 
    SET last_activity = CURRENT_TIMESTAMP 
    WHERE chat_id = :NEW.chat_id;
END trg_update_chat_activity;
/


INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1000, 'USER', 'Testing the activity trigger!');


SELECT chat_id, last_activity FROM chat_session WHERE chat_id = 1000;