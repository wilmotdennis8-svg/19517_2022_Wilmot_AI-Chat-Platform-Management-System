
INSERT INTO user_subscription (subscription_id, user_id, plan_id, start_date, end_date, is_active, auto_renew)
VALUES (subscription_seq.NEXTVAL, 1000, 2, SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', 'Y');


INSERT INTO user_subscription (subscription_id, user_id, plan_id, start_date, end_date, is_active, auto_renew)
VALUES (subscription_seq.NEXTVAL, 1001, 1, SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', 'N');


INSERT INTO user_subscription (subscription_id, user_id, plan_id, start_date, end_date, is_active, auto_renew)
VALUES (subscription_seq.NEXTVAL, 1002, 2, SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', 'Y');


INSERT INTO user_subscription (subscription_id, user_id, plan_id, start_date, end_date, is_active, auto_renew)
VALUES (subscription_seq.NEXTVAL, 1004, 3, SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', 'Y');


SELECT * FROM user_subscription;