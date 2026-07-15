CREATE OR REPLACE TRIGGER trg_update_message_count
AFTER INSERT ON message
FOR EACH ROW
BEGIN
    UPDATE chat_session 
    SET total_messages = total_messages + 1 
    WHERE chat_id = :NEW.chat_id;
END trg_update_message_count;
/


INSERT INTO message (message_id, chat_id, sender_type, message_content)
VALUES (message_seq.NEXTVAL, 1000, 'USER', 'Testing the count trigger!');


SELECT chat_id, total_messages FROM chat_session WHERE chat_id = 1000;