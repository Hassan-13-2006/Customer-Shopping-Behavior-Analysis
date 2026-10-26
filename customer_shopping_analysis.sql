-- Customer Shopping Behavior Analysis
-- Database: customer_shopping_db
-- Table: customer_shopping

-- 1. Dataset overview
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT customer_id) AS unique_customers,
    ROUND(SUM(purchase_amount), 2) AS total_recorded_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount,
    ROUND(AVG(review_rating), 2) AS average_review_rating
FROM customer_shopping;

-- 2. Purchase amount by category
SELECT
    category,
    COUNT(*) AS total_records,
    SUM(purchase_amount) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_shopping
GROUP BY category
ORDER BY total_purchase_amount DESC;

-- 3. Subscription analysis
SELECT
    subscription_status,
    COUNT(*) AS total_records,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount,
    ROUND(AVG(previous_purchases), 2) AS average_previous_purchases
FROM customer_shopping
GROUP BY subscription_status
ORDER BY total_records DESC;

-- 4. Customer segment analysis
SELECT
    customer_segment,
    COUNT(*) AS total_records,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount,
    ROUND(AVG(review_rating), 2) AS average_rating
FROM customer_shopping
GROUP BY customer_segment
ORDER BY total_records DESC;

-- 5. Seasonal analysis
SELECT
    season,
    COUNT(*) AS total_records,
    SUM(purchase_amount) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_shopping
GROUP BY season
ORDER BY total_purchase_amount DESC;

-- 6. Discount analysis
SELECT
    discount_applied,
    COUNT(*) AS total_records,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_shopping
GROUP BY discount_applied
ORDER BY discount_applied;

-- 7. Top 10 products by total recorded purchase amount
SELECT
    item_purchased,
    COUNT(*) AS total_records,
    SUM(purchase_amount) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM customer_shopping
GROUP BY item_purchased
ORDER BY total_purchase_amount DESC
LIMIT 10;