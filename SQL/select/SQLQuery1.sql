--1. הצג את כל השורות מטבלת Customers--
select * from Customers

--2.הצג רק את העמודות CustomerName ו‑Country מטבלת Customers--
select CustomerName,Country from Customers

--3.הצג את כל העובדים מטבלת Employees לפי שם משפחה בלבד (LastName)--
select LastName from Employees

--4.(רק שם מוצר ויחידה שמחירם מעל 20Products הצג את כל המוצרים מטבלת  --
select ProductName,UnitsInStock from Products
where UnitPrice > 20

--5.הצג את כל הלקוחות שמדינתם היא Germany (רק שם וכתובת)--
select * from Customers
where Country = 'germany'

--6.. הצג את כל המוצרים שמתחילים באות A (רק ProductName)--
select * from Products
where ProductName like 'a%'

--7.הצג את כל העובדים שמספר ה־EmployeeID שלהם קטן מ‑5--
select * from Employees
where EmployeeID < 5

--8.הצג את כל הלקוחות שמספר הפקס שלהם הוא NULL--
select * from Customers
where fax is null

--9.הצג את כל המוצרים לפי מחיר מהזול ליקר--
select * from Products
order by UnitPrice

--10.הצג את 5 המוצרים הראשונים בלבד--
select * from Products
limit 5;
