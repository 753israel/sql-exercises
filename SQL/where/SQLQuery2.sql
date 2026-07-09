--1. הצג את כל הלקוחות שמדינתם היא France--
select * from Customers
where Country = 'France'

--2. הצג את כל המוצרים שמחירם גדול מ‑50--
select * from Products
where UnitPrice > 50

--3.הצג את כל העובדים ששמם הפרטי הוא Nancy--
select * from Employees
where FirstName = 'Nancy'

--4. הצג את כל הלקוחות שהעיר שלהם היא Berlin
select * from Customers
where City = 'Berlin'

--5. הצג את כל המוצרים שמספר היחידות במלאי קטן מ‑20 --
select * from Products
where UnitsInStock < 20

--6.הצג את כל העובדים שמספר ה־EmployeeID שלהם גדול מ‑3 --
select * from Employees
where EmployeeID > 3

--7. הצג את כל הלקוחות שאין להם פקס (Fax IS NULL)--
select * from Customers
where Fax is null

--8. הצג את כל המוצרים שמחירם בין 10 ל‑30--
select * from Products
where UnitPrice between 10 and 30

--9. הצג את כל הלקוחות שמדינתם אינה USA--
select * from Customers
where Country != 'USA'

--10. הצג את כל העובדים ששנת הלידה שלהם לפני 1960--
select * from Employees
where year(BirthDate) < 1960
 --או--
select * from Employees
where BirthDate < '1960-01-01'
