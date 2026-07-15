INSERT INTO subscription_plan (plan_id, plan_name, description, price_usd, billing_cycle, max_chats, max_files, max_storage_mb)
VALUES (1, 'Free', 'Basic free plan with limited features', 0, 'MONTHLY', 50, 5, 50);

INSERT INTO subscription_plan (plan_id, plan_name, description, price_usd, billing_cycle, max_chats, max_files, max_storage_mb)
VALUES (2, 'Premium', 'Full feature plan for power users', 19.99, 'MONTHLY', 10000, 500, 5000);

INSERT INTO subscription_plan (plan_id, plan_name, description, price_usd, billing_cycle, max_chats, max_files, max_storage_mb)
VALUES (3, 'Enterprise', 'Business plan with maximum limits', 79.99, 'MONTHLY', 100000, 5000, 50000);


SELECT * FROM subscription_plan;