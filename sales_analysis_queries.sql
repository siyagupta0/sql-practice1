#Identify which sales agent generated the highest total sales by summing order amounts.
SELECT 
    a.AGENT_CODE,
    a.AGENT_NAME,
    SUM(o.ORD_AMOUNT) AS TOTAL_SALES
FROM 
    agents a
JOIN 
    orders o ON a.AGENT_CODE = o.AGENT_CODE
GROUP BY 
    a.AGENT_CODE, a.AGENT_NAME
ORDER BY 
    TOTAL_SALES DESC;

#Extract all customers who have outstanding amounts greater than ₹50,000.
SELECT 
    CUST_CODE,
    CUST_NAME,
    OUTSTANDING_AMT
FROM 
    customer
WHERE 
    OUTSTANDING_AMT > 50000
ORDER BY 
    OUTSTANDING_AMT DESC;

#Identify orders where customers have paid more than 50% of the total order amount in advance.
SELECT 
    ORD_NUM,
    CUST_CODE,
    ORD_AMOUNT,
    ADVANCE_AMOUNT
FROM 
    orders
WHERE 
    ADVANCE_AMOUNT > 0.5 * ORD_AMOUNT;

#Determine how many customers each agent is responsible for.
SELECT 
    a.AGENT_CODE,
    a.AGENT_NAME,
    COUNT(c.CUST_CODE) AS NUM_CUSTOMERS
FROM 
    agents a
LEFT JOIN 
    customer c ON a.AGENT_CODE = c.AGENT_CODE
GROUP BY 
    a.AGENT_CODE, a.AGENT_NAME;

#Fetch the most recent order placed by every customer.
SELECT 
    o.*
FROM 
    orders o
INNER JOIN (
    SELECT 
        CUST_CODE, 
        MAX(ORD_DATE) AS LAST_ORDER_DATE
    FROM 
        orders
    GROUP BY 
        CUST_CODE
) recent_orders ON o.CUST_CODE = recent_orders.CUST_CODE AND o.ORD_DATE = recent_orders.LAST_ORDER_DATE;

#List the top 5 customers based on the total payments they have made.
SELECT
    CUST_CODE,
    CUST_NAME,
    PAYMENT_AMT
FROM 
    customer
ORDER BY 
    PAYMENT_AMT DESC
LIMIT 5;

#Find the average order value grouped by the agent's working area.
SELECT 
    a.WORKING_AREA,
    AVG(o.ORD_AMOUNT) AS AVG_ORDER_VALUE
FROM 
    agents a
JOIN 
    orders o ON a.AGENT_CODE = o.AGENT_CODE
GROUP BY 
    a.WORKING_AREA
ORDER BY 
    AVG_ORDER_VALUE DESC;

#Identify agents who have no orders linked to their code.
SELECT 
    AGENT_CODE,
    AGENT_NAME
FROM 
    agents
WHERE 
    AGENT_CODE NOT IN (SELECT DISTINCT AGENT_CODE FROM orders);

#Extract a list of customers who haven't placed any orders.
SELECT 
    c.CUST_CODE,
    c.CUST_NAME
FROM 
    customer c
LEFT JOIN 
    orders o ON c.CUST_CODE = o.CUST_CODE
WHERE 
    o.ORD_NUM IS NULL;

#Generate a monthly sales report showing total sales for each month.
SELECT 
    DATE_FORMAT(ORD_DATE, '%Y-%m') AS MONTH,
    SUM(ORD_AMOUNT) AS TOTAL_SALES
FROM 
    orders
GROUP BY 
    DATE_FORMAT(ORD_DATE, '%Y-%m')
ORDER BY 
    MONTH;