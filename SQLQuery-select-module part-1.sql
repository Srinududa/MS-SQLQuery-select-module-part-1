

select *
from Orders
order by OrderDate desc

--to get the distinct value of a column
select distinct shipname from orders; (it can worked out any column to )
/** Alfreds Futterkiste
Alfred's Futterkiste
Ana Trujillo Emparedados y helados
Antonio Moreno Taquería
Around the Horn
Berglunds snabbköp
Blauer See Delikatessen
Blondel père et fils
Bólido Comidas preparadas**/

---distinct--
select distinct shipname,CustomerID from orders;

select distinct *  from orders;

----filter---
select * from orders
where EmployeeID=5


select * from orders
where orderdate ='1998-05-06'
order by orderdate




select * from Orders order by OrderDate desc


--and--
select CustomerID, RequiredDate, ShipName from orders
where orderdate ='1998-05-06' and ShipName='Simons bistro'
--or---
select CustomerID, RequiredDate, ShipName from orders
where orderdate ='1998-05-06' or ShipName='Simons bistro'


select * from Orders

--quantity--
select * from Orders where EmployeeID>5 and OrderDate='1997-07-15'

select cast(OrderDate as date) as order_new_date;


--new coloumn as profit and sales
select *, profit/sales as ratio --(colmn name)
from Orders



--pattern matching 
select orderid,orderdate from Orders where customer_name like VINET