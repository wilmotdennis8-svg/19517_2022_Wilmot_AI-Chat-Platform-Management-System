SELECT TO_CHAR(payment_date, 'YYYY-MM') AS month, SUM(amount_usd) AS revenue
FROM payment
WHERE status = 'COMPLETED'
GROUP BY TO_CHAR(payment_date, 'YYYY-MM')
ORDER BY month;