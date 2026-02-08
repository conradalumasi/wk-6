-- Question 1: Get employee details with office information
-- INNER JOIN ensures we only get employees with assigned offices
SELECT e.firstName,
    e.lastName,
    e.email,
    e.officeCode,
    o.city,
    o.country
FROM employees e
    INNER JOIN offices o ON e.officeCode = o.officeCode;
-- Question 2: Get product details with product line information
-- LEFT JOIN ensures ALL products are shown, even if they have no product line
SELECT p.productName,
    p.productVendor,
    p.productLine,
    pl.textDescription
FROM products p
    LEFT JOIN productlines pl ON p.productLine = pl.productLine;
-- Question 3: Get order details with customer information
-- RIGHT JOIN ensures ALL orders are shown, even if customer info is missing
SELECT o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber,
    c.customerName,
    c.phone
FROM customers c
    RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate DESC
LIMIT 10;