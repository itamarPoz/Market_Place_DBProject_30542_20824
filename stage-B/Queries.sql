--SELECT queries--

--1--
-- Top 5 customers in 2024 by orders and average feedback rating.
SELECT 
    c.customer_name,
    c.email,
    COUNT(o.order_id) AS total_orders,
    AVG(f.rating) AS average_rating,
    EXTRACT(YEAR FROM o.order_date) AS order_year
FROM 
    Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    LEFT JOIN Feedbacks f ON f.customer_id = c.customer_id 
        AND EXTRACT(YEAR FROM f.feedback_date) = EXTRACT(YEAR FROM o.order_date)
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2024
GROUP BY 
    c.customer_id, c.customer_name, c.email, EXTRACT(YEAR FROM o.order_date)
HAVING 
    COUNT(o.order_id) > 0
ORDER BY 
    total_orders DESC, average_rating DESC
LIMIT 5;

--2--
-- Monthly revenue per department for 2025.
SELECT 
    d.department_name,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    SUM(i.price * oi.quantity) AS total_revenue
FROM 
    Departments d
    JOIN Items i ON i.department_id = d.department_id
    JOIN OrderItems oi ON oi.Item_id = i.Item_id
    JOIN Orders o ON o.order_id = oi.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2025
GROUP BY 
    d.department_name, EXTRACT(MONTH FROM o.order_date), EXTRACT(YEAR FROM o.order_date)
ORDER BY 
    order_month ASC, total_revenue DESC;

--3--
-- Items with high stock (>50) not sold in the first half of 2025, with supplier info.
SELECT 
    i.Item_name,
    i.stock,
    STRING_AGG(s.supplier_name, ', ') AS supplier_names,
    STRING_AGG(s.phone, ', ') AS supplier_phones,
    EXTRACT(MONTH FROM i.available_date) AS available_month,
    EXTRACT(YEAR FROM i.available_date) AS available_year
FROM 
    Items i
    JOIN sell sl ON sl.Item_id = i.Item_id
    JOIN Suppliers s ON s.supplier_id = sl.supplier_id
WHERE 
    i.stock > 50
    AND i.Item_id NOT IN (
        SELECT oi.Item_id 
        FROM OrderItems oi 
        JOIN Orders o ON o.order_id = oi.order_id
        WHERE EXTRACT(YEAR FROM o.order_date) = 2025
        AND EXTRACT(MONTH FROM o.order_date) BETWEEN 1 AND 6
    )
GROUP BY 
    i.Item_id, i.Item_name, i.stock, i.available_date
ORDER BY 
    i.stock DESC;

--4--
-- Items with good feedback in 2024, showing department and average rating.
SELECT 
    i.Item_name,
    d.department_name,
    EXTRACT(MONTH FROM min_feedback_date) AS feedback_month,
    EXTRACT(YEAR FROM min_feedback_date) AS feedback_year,
    avg_rating
FROM 
    Items i
    NATURAL JOIN Departments d
    JOIN (
        SELECT 
            f.Item_id,
            AVG(f.rating) AS avg_rating,
            MIN(f.feedback_date) AS min_feedback_date
        FROM 
            Feedbacks f
        WHERE 
            EXTRACT(YEAR FROM f.feedback_date) = 2024
            AND f.Item_id IN (
                SELECT Item_id 
                FROM Feedbacks 
                WHERE rating > 7.0
            )
        GROUP BY 
            f.Item_id
        HAVING 
            AVG(f.rating) > 4.0
    ) feedback_stats ON i.Item_id = feedback_stats.Item_id
GROUP BY 
    i.Item_id, i.Item_name, d.department_name, min_feedback_date, avg_rating
ORDER BY 
    avg_rating DESC, feedback_month ASC;

--5--
-- Delivered orders in 2024 by customers who didn't leave feedback that year.
SELECT 
    c.customer_name,
    c.email,
    o.order_id,
    o.order_date
FROM 
    Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN OrderDetails od ON o.order_id = od.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2024
    AND od.order_status = 'delivered'
    AND o.customer_id NOT IN (
        SELECT f.customer_id
        FROM Feedbacks f
        WHERE EXTRACT(YEAR FROM f.feedback_date) = 2024
    )
ORDER BY 
    o.order_date DESC;

--6--
-- Departments with unsold items in 2025, grouped by year of item availability.
SELECT 
    d.department_name,
    d.information,
    EXTRACT(YEAR FROM i.available_date) AS available_year,
    COUNT(i.Item_id) AS unsold_items_count
FROM 
    Departments d
    JOIN Items i ON i.department_id = d.department_id
    LEFT JOIN OrderItems oi ON oi.Item_id = i.Item_id
    LEFT JOIN Orders o ON o.order_id = oi.order_id 
        AND EXTRACT(YEAR FROM o.order_date) = 2025
WHERE 
    o.order_id IS NULL
GROUP BY 
    d.department_name, d.information, EXTRACT(YEAR FROM i.available_date)
HAVING 
    COUNT(i.Item_id) > 0
ORDER BY 
    unsold_items_count DESC;

--7--
-- Delivery methods with delayed orders (>30 days) in 2025, showing average delay.
SELECT 
    od.delivery_method,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    COUNT(o.order_id) AS delayed_orders,
    AVG(CURRENT_DATE - o.order_date) AS avg_delivery_days
FROM 
    Orders o
    JOIN OrderDetails od ON o.order_id = od.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2025
    AND (CURRENT_DATE - o.order_date) > 30
GROUP BY 
    od.delivery_method, EXTRACT(MONTH FROM o.order_date), EXTRACT(YEAR FROM o.order_date)
ORDER BY 
    avg_delivery_days DESC;

--8--
-- Suppliers with at least 3 high-stock items (stock >100) available by 2024.
SELECT 
    s.supplier_name,
    s.address,
    EXTRACT(YEAR FROM i.available_date) AS available_year,
    COUNT(i.Item_id) AS high_stock_items,
    SUM(i.stock) AS total_high_stock
FROM 
    Suppliers s
    JOIN sell sl ON s.supplier_id = sl.supplier_id
    JOIN Items i ON sl.Item_id = i.Item_id
WHERE 
    i.stock > 100
    AND EXTRACT(YEAR FROM i.available_date) <= 2024
    AND s.supplier_id IN (
        SELECT 
            sl2.supplier_id
        FROM 
            sell sl2
            JOIN Items i2 ON sl2.Item_id = i2.Item_id
        WHERE 
            i2.stock > 100
            AND EXTRACT(YEAR FROM i2.available_date) <= 2024
        GROUP BY 
            sl2.supplier_id
        HAVING 
            COUNT(DISTINCT i2.Item_id) >= 3
    )
GROUP BY 
    s.supplier_name, s.address, EXTRACT(YEAR FROM i.available_date)
HAVING 
    COUNT(i.Item_id) > 0
ORDER BY 
    high_stock_items DESC;


--DELETE queries-- 
--1--
-- Delete old (≤2023), low-rated feedbacks from customers with <2 orders.   
DELETE FROM Feedbacks f
WHERE 
    EXTRACT(YEAR FROM f.feedback_date) <= 2023
    AND f.rating < 2.5
    AND f.customer_id IN (
        SELECT c.customer_id 
        FROM Customers c
        JOIN Orders o ON c.customer_id = o.customer_id
        GROUP BY c.customer_id
        HAVING COUNT(o.order_id) < 2
    );

--2--  
-- Delete suppliers ending with 'x' who don't sell any items.
DELETE FROM Suppliers s
WHERE 
    s.supplier_name LIKE '%x'
    AND s.supplier_id NOT IN (
        SELECT sl.supplier_id 
        FROM sell sl
    );

--3--  
-- Delete departments with no items and 'leg' in their information.
DELETE FROM Departments d
WHERE 
    d.department_id NOT IN (
        SELECT i.department_id 
        FROM Items i
    )
    AND d.information LIKE '%leg%'    


--UPDATE queries-- 
--1-- 
-- Increase price by 10% for items with low stock (<10) sold in 2025.
UPDATE Items i
SET price = price * 1.10
WHERE 
    i.stock < 10
    AND i.Item_id IN (
        SELECT oi.Item_id 
        FROM OrderItems oi
        JOIN Orders o ON o.order_id = oi.order_id
        WHERE EXTRACT(YEAR FROM o.order_date) = 2025
    );    

--2--
-- Update department information to 'High Activity' for departments with >3 items available after 2023. 
UPDATE Departments d
SET information = 'High Activity'
WHERE 
    d.department_id IN (
        SELECT i.department_id 
        FROM Items i
        WHERE EXTRACT(YEAR FROM i.available_date) > 2023
        AND i.stock > 0
        GROUP BY i.department_id
        HAVING COUNT(i.Item_id) > 3
    );


--3--
-- Update email for customers with low feedback ratings (<3.0) and no recent orders (≥6 months).
UPDATE Customers c
SET email = 'followup@domain.com'
WHERE c.customer_id IN (
    SELECT f.customer_id
    FROM Feedbacks f
    WHERE f.rating < 3.0
    AND f.feedback_date >= CURRENT_DATE - INTERVAL '1 year'
    GROUP BY f.customer_id
    HAVING COUNT(f.feedback_id) >= 2
)
AND c.customer_id NOT IN (
    SELECT o.customer_id
    FROM Orders o
    WHERE o.order_date >= CURRENT_DATE - INTERVAL '6 months'
);     