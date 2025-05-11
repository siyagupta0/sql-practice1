CREATE DATABASE sample;

USE sample;

CREATE TABLE agents 
   (	
    agent_code CHAR(6) NOT NULL PRIMARY KEY, 
	agent_name CHAR(40), 
	working_area CHAR(35), 
	commission DECIMAL(10,2), 
	phone_no CHAR(15), 
	country VARCHAR(25) 
	 );
     
INSERT INTO AGENTS VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '');
INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO AGENTS VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO AGENTS VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO AGENTS VALUES ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '');
INSERT INTO AGENTS VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO AGENTS VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO AGENTS VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO AGENTS VALUES ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '');
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

CREATE TABLE  customer (
  cust_code VARCHAR(6) NOT NULL PRIMARY KEY, 
  cust_name VARCHAR(40) NOT NULL, 
  cust_city CHAR(35), 
  working_area VARCHAR(35) NOT NULL, 
  cust_country VARCHAR(20) NOT NULL, 
  grade INT, 
  opening_amt DECIMAL(12,2) NOT NULL, 
  receive_amt DECIMAL(12,2) NOT NULL, 
  payment_amt DECIMAL(12,2) NOT NULL, 
  outstanding_amt DECIMAL(12,2) NOT NULL, 
  phone_no VARCHAR(17) NOT NULL, 
  agent_code CHAR(6) NOT NULL REFERENCES AGENTS
);   

INSERT INTO CUSTOMER VALUES ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003');
INSERT INTO CUSTOMER VALUES ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008');
INSERT INTO CUSTOMER VALUES ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008');
INSERT INTO CUSTOMER VALUES ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011');
INSERT INTO CUSTOMER VALUES ('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006');
INSERT INTO CUSTOMER VALUES ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003');
INSERT INTO CUSTOMER VALUES ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008');
INSERT INTO CUSTOMER VALUES ('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005');
INSERT INTO CUSTOMER VALUES ('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005');
INSERT INTO CUSTOMER VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010');
INSERT INTO CUSTOMER VALUES ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002');
INSERT INTO CUSTOMER VALUES ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010');
INSERT INTO CUSTOMER VALUES ('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678','A002');
INSERT INTO CUSTOMER VALUES ('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005');
INSERT INTO CUSTOMER VALUES ('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006');
INSERT INTO CUSTOMER VALUES ('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004');
INSERT INTO CUSTOMER VALUES ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009');
INSERT INTO CUSTOMER VALUES ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007');
INSERT INTO CUSTOMER VALUES ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012');
INSERT INTO CUSTOMER VALUES ('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004');
INSERT INTO CUSTOMER VALUES ('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004');
INSERT INTO CUSTOMER VALUES ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002');
INSERT INTO CUSTOMER VALUES ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001');
INSERT INTO CUSTOMER VALUES ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007');
INSERT INTO CUSTOMER VALUES ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

CREATE TABLE orders
   (
	  ord_num DECIMAL(6,0) NOT NULL PRIMARY KEY, 
	  ord_amount DECIMAL(12,2) NOT NULL, 
	  advance_amount DECIMAL(12,2) NOT NULL, 
	  ord_date DATE NOT NULL, 
	  cust_code VARCHAR(6) NOT NULL REFERENCES CUSTOMER, 
	  agent_code CHAR(6) NOT NULL REFERENCES AGENTS, 
	ord_description VARCHAR(60) NOT NULL
   );

INSERT INTO ORDERS VALUES('200100', '1000.00', '600.00', '2008/08/01', 'C00013', 'A003', 'SOD');
INSERT INTO ORDERS VALUES('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD'); 
INSERT INTO ORDERS VALUES('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD');
INSERT INTO ORDERS VALUES('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD');
INSERT INTO ORDERS VALUES('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD');
INSERT INTO ORDERS VALUES('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD');
INSERT INTO ORDERS VALUES('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD');
INSERT INTO ORDERS VALUES('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD');
INSERT INTO ORDERS VALUES('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD'); 
INSERT INTO ORDERS VALUES('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD');
INSERT INTO ORDERS VALUES('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD');
INSERT INTO ORDERS VALUES('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD');
INSERT INTO ORDERS VALUES('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD');

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