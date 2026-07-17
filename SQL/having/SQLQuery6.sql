--1. הצג את מספר הלקוחות בכל מדינה, אבל רק מדינות שיש בהן יותר מ‑5 לקוחות.--
select Country,count(*) from Customers
group by Country
having count(*) > 5

--2. הצג את מספר המוצרים בכל קטגוריה, אבל רק קטגוריות שבהן הממוצע של המחיר גבוה מ‑20.--
SELECT CategoryID, COUNT(*) AS NumProducts, AVG(UnitPrice) AS AvgPrice
FROM Products
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 20;


--3. הצג את מספר העובדים בכל תפקיד (Title), אבל רק תפקידים שיש בהם יותר מ‑2 עובדים.
select Title,COUNT(*) as proftion
from Employees
group by Title
having COUNT(*) > 2

--4. הצג את מספר ההזמנות לכל לקוח, אבל רק לקוחות שביצעו יותר מ‑3 הזמנות.
select EmployeeID, COUNT(*) as NumOrders
from Orders
group by EmployeeID
having COUNT(*) > 3;

--5. הצג את מספר המוצרים לכל ספק, אבל רק ספקים שהמלאי הכולל שלהם (SUM UnitsInStock) גדול מ‑100.
select SupplierID,
       COUNT(*) as NumProducts,
       SUM(UnitsInStock) as TotalStock
from Products
group by SupplierID
having SUM(UnitsInStock) > 100;

--6. הצג את מספר ההזמנות לכל עובד, אבל רק עובדים שהממוצע של כמות המוצרים בהזמנה שלהם גדול מ‑10.
SELECT o.EmployeeID,
       COUNT(*) AS NumOrders,
       AVG(od.Quantity) AS AvgQuantity
FROM Orders o
JOIN [Order Details] od
    ON o.OrderID = od.OrderID
GROUP BY o.EmployeeID
HAVING AVG(od.Quantity) > 10;



--7.  גדול מ‑50(MAX) הצג את מספר המוצרים בכל קטגוריה, אבל רק קטגוריות שבהן המחיר הכי גבוה.
select CategoryID,
       COUNT(*) as NumProducts,
       MAX(UnitPrice) as MaxPrice
from Products
group by CategoryID
having MAX(UnitPrice) > 50;

--8. הצג את מספר הלקוחות בכל עיר, אבל רק ערים שבהן יש יותר מ‑2 לקוחות וששם העיר מתחיל באות A.
select City,
       COUNT(*) as NumCustomers
from Customers
where City like 'A%'
group by City
having COUNT(*) > 2;

--9. הצג את מספר המוצרים לכל ספק, אבל רק ספקים שהממוצע של המלאי שלהם קטן מ‑20.
select SupplierID,
       COUNT(*) as NumProducts,
       AVG(UnitsInStock) as AvgStock
from Products
group by SupplierID
having AVG(UnitsInStock) < 20;

--10. הצג את מספר ההזמנות לכל לקוח, אבל רק לקוחות שהסכום הכולל של ההזמנות שלהם גדול מ‑5000.
SELECT o.CustomerID,
       COUNT(*) AS NumOrders,
       SUM(od.UnitPrice * od.Quantity) AS TotalAmount
FROM Orders o
JOIN [Order Details] od
    ON o.OrderID = od.OrderID
GROUP BY o.CustomerID
HAVING SUM(od.UnitPrice * od.Quantity) > 5000;
