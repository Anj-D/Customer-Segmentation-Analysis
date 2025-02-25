SELECT customer, 
       DATEDIFF(curdate(), MAX(order_date)) AS recency,
       COUNT(order_id) AS frequency,
       SUM(grand_total) AS monetary
FROM sample_orders
GROUP BY customer;

WITH RFM AS (
    SELECT customer,
           DATEDIFF(CURDATE(), MAX(order_date)) AS recency,
           COUNT(order_id) AS frequency,
           SUM(grand_total) AS monetary
    FROM sample_orders
    GROUP BY customer
)
SELECT customer,
       NTILE(4) OVER (ORDER BY recency ASC) AS r_score,  -- Recent purchases get higher scores
       NTILE(4) OVER (ORDER BY frequency DESC) AS f_score,  -- Frequent buyers get higher scores
       NTILE(4) OVER (ORDER BY monetary DESC) AS m_score   -- Higher spenders get higher scores
FROM RFM;

WITH RFM_SCORES AS (
    SELECT customer,
           NTILE(4) OVER (ORDER BY DATEDIFF(CURDATE(), MAX(order_date)) ASC) AS r_score,
           NTILE(4) OVER (ORDER BY COUNT(order_id) DESC) AS f_score,
           NTILE(4) OVER (ORDER BY SUM(grand_total) DESC) AS m_score
    FROM sample_orders
    GROUP BY customer
)
SELECT customer, 
       CONCAT(r_score, f_score, m_score) AS rfm_segment,
       CASE 
           WHEN r_score = 1 AND f_score = 1 AND m_score = 1 THEN 'Best Customers'
           WHEN r_score = 1 AND f_score = 1 THEN 'Loyal Customers'
           WHEN m_score = 1 THEN 'Big Spenders'
           WHEN r_score = 3 AND f_score = 1 AND m_score = 1 THEN 'Almost Lost'
           WHEN r_score = 4 AND f_score = 1 AND m_score = 1 THEN 'Lost Customers'
           WHEN r_score = 4 AND f_score = 4 AND m_score = 4 THEN 'Lost Cheap Customers'
           ELSE 'Other'
       END AS segment
FROM RFM_SCORES;

