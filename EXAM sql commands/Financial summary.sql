SELECT 
    'Total Revenue' AS metric,
    TO_CHAR(SUM(amount_usd), '$999.99') AS value
FROM payment
WHERE status = 'COMPLETED'
UNION ALL
SELECT 
    'Total Payments' AS metric,
    TO_CHAR(COUNT(*)) AS value
FROM payment
WHERE status = 'COMPLETED'
UNION ALL
SELECT 
    'Active Subscriptions' AS metric,
    TO_CHAR(COUNT(*)) AS value
FROM user_subscription
WHERE is_active = 'Y';