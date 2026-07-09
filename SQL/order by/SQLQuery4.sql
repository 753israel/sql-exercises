--1. הצג את כל המוצרים לפי מחיר מהזול ליקר--
select * from Products
order by UnitPrice

--הצג את כל המוצרים לפי מחיר מהיקר לזול .2--
select * from Products
order by UnitPrice DESC

--3. הצג את כל העובדים לפי שם משפחה בסדר אלפביתי--
select * from Employees
order by LastName

--4. הצג את כל הלקוחות לפי מדינה ואז לפי עיר--
select * from Customers
order by Country, City


--5. הצג את כל המוצרים לפי שם מוצר מה‑A עד Z--
select * from Products
order by ProductName

--6. הצג את כל העובדים לפי תאריך לידה מהצעיר לזקן--
select * from Employees
ORDER BY BirthDate DESC

--7. הצג את כל הלקוחות לפי מספר לקוח מהקטן לגדול--
select * from Customers
order by CustomerID ASC
--או
--order by CustomerID


--8. הצג את כל המוצרים לפי UnitsInStock מהגדול לקטן--
select * from Products
order by UnitsInStock

--9. הצג את כל העובדים לפי שם פרטי מה‑Z עד A --
select * from Employees
order by FirstName desc

--10. הצג את כל הלקוחות לפי שם, אבל רק את 5 הראשונים--
select top 5 *
from Customers
order by ContactName
