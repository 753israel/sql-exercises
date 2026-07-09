--1. הצג את כל הלקוחות ששמם מתחיל באות A--
select * from Customers
where ContactName like 'A%'

--2.הצג את כל המוצרים ששמם מסתיים באות S --
select * from Products
where ProductName like '%S'

--3. הצג את כל העובדים ששמם מכיל את האות N בכל מקום--
select * from Employees
where FirstName like '%n%'

--4.הצג את כל הלקוחות ששמם מכיל שתי אותיות רצופות "an"--
select * from Customers
where ContactName like '%an%'

--5.הצג את כל המוצרים ששמם מתחיל באותיות Ch --
select * from Products
where ProductName like 'Ch%'

--6. הצג את כל העובדים ששמם הפרטי הוא בדיוק 5 תווים--
select * from Employees
where FirstName like '_____'


--7. לקוחות ששמם מכיל רווח (space)--
select * from Customers
where ContactName like '% %'

--8. מוצרים שמתחילים באות בין A ל‑C--
select * from Products
where ProductName like 'A%'
   or ProductName like 'B%'
   or ProductName like 'C%'


--עובדים ששמם מסתיים ב‑Y או N--9. --
select * from Employees
where FirstName like '%y'
   or FirstName like '%n'


--10. לקוחות ששמם לא מתחיל באות A--
select * from Customers
where ContactName not like 'A%'
