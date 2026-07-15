CREATE OR REPLACE TRIGGER trg_audit_user_changes
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (
        log_id,
        user_id,
        action,
        entity_type,
        entity_id,
        old_value,
        new_value
    ) VALUES (
        audit_seq.NEXTVAL,
        :OLD.user_id,
        'UPDATE',
        'USERS',
        :OLD.user_id,
        'Email: ' || :OLD.email || ', Name: ' || :OLD.first_name || ' ' || :OLD.last_name,
        'Email: ' || :NEW.email || ', Name: ' || :NEW.first_name || ' ' || :NEW.last_name
    );
END trg_audit_user_changes;
/


UPDATE users SET first_name = 'Wilmot-Updated' WHERE user_id = 1000;

SELECT * FROM audit_log ORDER BY created_at DESC;