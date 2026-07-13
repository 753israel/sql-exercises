--1. הצג את מספר המוצרים שיש לכל ספק (SupplierID)--
select SupplierID, COUNT(*) as TotalProducts
from Products
group by SupplierID;

--2. הצג את המחיר הממוצע לכל קטגוריה (CategoryID)--
SELECT CategoryID, AVG(UnitPrice) AS AvgPrice
FROM Products
GROUP BY CategoryID;

--3. הצג את מספר הלקוחות בכל מדינה--
SELECT Country,COUNT(*) as NumberCustomerCountry 
FROM Customers
GROUP BY Country

--4. הצג את מספר העובדים בכל עיר--
SELECT City,COUNT(City) as NumberOfEmployees
FROM Employees
group by City

--5. הצג את המחיר הגבוה ביותר לכל ספק--
SELECT SupplierID,MAX(UnitPrice) AS HighestPrice
FROM Products
group by SupplierID

--6. הצג את המחיר הנמוך ביותר לכל קטגוריה--
SELECT CategoryID,MIN(UnitPrice) as MinPrice
from Products
group by CategoryID

--7. הצג את מספר המוצרים בכל קטגוריה, אבל רק קטגוריות שיש בהן יותר מ‑5 מוצרים--
SELECT CategoryID, COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;


--8. הצג את הממוצע של המלאי (UnitsInStock) לכל ספק--
SELECT SupplierID ,AVG(UnitsInStock) as avg_product from Products
group by SupplierID

--9. הצג את מספר הלקוחות בכל עיר, אבל רק ערים שמתחילות באות B--
SELECT City, COUNT(*) AS NumberOfCustomers
FROM Customers
WHERE City LIKE 'B%'
GROUP BY City;


--10. הצג את מספר העובדים בכל תפקיד (Title)--
select Title,COUNT(*) as numberofprofession
from Employees
group by Title

