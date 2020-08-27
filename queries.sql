-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product
JOIN Category
ON product.CategoryID = Category.ID
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, o.ShipName
FROM [Order] as o
WHERE o.OrderDate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, o.Quantity
FROM OrderDetail as o 
JOIN Product as p ON o.ProductID = p.id 
WHERE o.OrderId = "10251"
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id as "ID", c.CompanyName as "Ordered From", e.LastName as "Employee"
FROM [Order] as o
JOIN Employee as e ON o.EmployeeId = e.id
JOIN Customer as c on o.CustomerId = c.id