
INSERT INTO payment (payment_id, user_id, subscription_id, amount_usd, payment_method, transaction_id, status)
VALUES (payment_seq.NEXTVAL, 1000, 1000, 19.99, 'CREDIT_CARD', 'TXN_WILMOT_001', 'COMPLETED');

INSERT INTO payment (payment_id, user_id, subscription_id, amount_usd, payment_method, transaction_id, status)
VALUES (payment_seq.NEXTVAL, 1002, 1002, 19.99, 'PAYPAL', 'TXN_JOHN_001', 'COMPLETED');

INSERT INTO payment (payment_id, user_id, subscription_id, amount_usd, payment_method, transaction_id, status)
VALUES (payment_seq.NEXTVAL, 1004, 1003, 79.99, 'CREDIT_CARD', 'TXN_BOB_001', 'COMPLETED');


SELECT * FROM payment;