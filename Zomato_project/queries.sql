
select * from deliveries;

---
select count(*) from customers;

---
select count(*) from customers where customer_id is null;

---
select count(*) from restaurants where restaurant_name is null or city is null;

---
select count(*) from orders where order_date is null or order_time is null;

---
select * from orders where order_item is null or order_date is null or order_time is null;

---
select * from customers;


---- checking the orders made by "aarav"
select c.customer_id,
c.customer_name,
o.order_item as dishes,
count(*) as total_orders
from orders as o 
join customers as c
on c.customer_id=o.customer_id
where 
o.order_date >= current_date - interval '1 Year'
AND c.customer_name = 'Aarav'
group by 1,2,3
order by 1,4 desc

----- making time intervals as time slots

select 
case 
	when extract(hour from order_time) between 0 and 1 then '00:00 - 02:00'
	when extract(hour from order_time) between 2 and 3 then '02:00 - 04:00'
	when extract(hour from order_time) between 4 and 5 then '04:00 - 06:00'
	when extract(hour from order_time) between 6 and 7 then '06:00 - 08:00'
	when extract(hour from order_time) between 8 and 9 then '08:00 - 10:00'
	when extract(hour from order_time) between 10 and 11 then '10:00 - 12:00'
	when extract(hour from order_time) between 12 and 13 then '12:00 - 14:00'
	when extract(hour from order_time) between 14 and 15 then '14:00 - 16:00'
	when extract(hour from order_time) between 16 and 17 then '16:00 - 18:00'
	when extract(hour from order_time) between 18 and 19 then '18:00 - 20:00'
	when extract(hour from order_time) between 20 and 21 then '20:00 - 22:00'
	when extract(hour from order_time) between 22 and 23 then '22:00 - 24:00'
end as time_slot,
count(order_id) as order_count
from orders 
group by time_slot
order by order_count desc;
----
---also we can have this way 

select  
floor(extract(hour from order_time)/2)*2 as start_time,
floor(extract(hour from order_time)/2)*2 +2 as end_time,
count (*) as total_orders 
from orders 
group by 1, 2
order by 3 desc

----

select count(*) from orders group by customer_id

----- Average amount for people who have ordered more than 4 times

select c.customer_name, AVG(o.total_amount) as aov 
from orders as o 
join customers as c 
on c.customer_id=o.customer_id
group by 1 
having count(order_id)>4

----person who have spent more amount on orders (more than 2K)

select c.customer_name, SUM(o.total_amount) as Sum_orders 
from orders as o 
join customers as c 
on c.customer_id=o.customer_id
group by 1 
Having Sum(o.total_amount)>2000;

-----check if any order is not delivered 

select * from orders as o 
left join 
restaurants as r 
on r.restaurant_id = o.restaurant_id
left join 
deliveries as d
on d.order_id = o.order_id 
where d.delivery_id is null

------ to list restaurants according to the revenues 

select r.city, r.restaurant_name,SUM(o.total_amount) as revenue
from orders as o join restaurants as r on r.restaurant_id = o.restaurant_id 
group by 1,2 
order by 1,3 desc

-----
with ranking_table 
as 
( 	select 
		r.city, 
		r.restaurant_name,
		sum(o.total_amount) as revenue,
		rank () over (partition by r.city order by sum(o.total_amount) desc) as rank
	from orders as o 
	join restaurants as r 
	on r.restaurant_id = o.restaurant_id 
	group by 1,2
)
select 
* from 
ranking_table
where rank=1;

-----
select * from 
(select r.city, o.order_item as dish, count(order_id) as total_orders,
rank () over (partition by r.city order by count(order_id) desc) as rank
from orders as o 
join restaurants as r 
on r.restaurant_id = o.restaurant_id 
group by 1, 2) as t1 
where rank=1 

-----

select distinct customer_id from orders 
where extract (year from order_date)=2023 
and 
customer_id not in (
select distinct customer_id from orders
where extract(year from order_date)=2024
)




-----the delivery time and order time difference
select 
o.order_id,
rider_id, 
o.order_time, 
d.delivery_time,
d.delivery_time - o.order_time as time_difference,
extract(epoch from (d.delivery_time - o.order_time + case when d.delivery_time < o.order_time then interval '1 day' else interval '0 day' end))/60 
as time_difference_min
from orders as o 
join deliveries as d
on o.order_id = d.order_id 
where d.delivery_status='Completed'

-------

select * from deliveries 

-------growth ratio comparsion from prev month
With growth_ratio
as(
	select 
	o.restaurant_id , 
	TO_CHAR(o.order_date, 'mm-yy') as month,
	COUNT(o.order_id) as cr_month_orders,
	LAG(Count(o.order_id),1) over (partition by o.restaurant_id order by TO_CHAR(o.order_date,'mm-yy')) as prev_month_orders
	from orders as o 
	join deliveries as d 
	on o.order_id = d.order_id 
	where d.delivery_status ='Completed'
	group by 1,2 
	order by 1,2 
)
select 
restaurant_id, 
month, prev_month_orders,
cr_month_orders,
Round((cr_month_orders::numeric-prev_month_orders::numeric)/prev_month_orders::numeric * 100,2) as grow_ratio 
from growth_ratio

------ category based on amount gold/silver
select cx_category,
sum(total_orders),
sum(total_spent)
from
(select 
	customer_id, 
	sum(total_amount) as total_spent,
	count(order_id) as total_orders,
	case when sum(total_amount)> (select avg(total_amount) from orders) then 'GOLD'
	else 'SILVER'
	end as cx_category 
from orders
group by 1 ) as t1 
group by 1 

---- rider's earning
select d.rider_id,
TO_CHAR(o.order_date, 'mm-yy') as month,
SUM(total_amount) as revenue,
SUM(total_amount)*0.08 as riders_earning
from orders as o
join deliveries as d 
on o.order_id = d.order_id 
group by 1,2 
order by 1,2 

------giving ratings to rider based on the time difference 
	
select rider_id, stars, count(*) as total_stars
from 
	(select rider_id, delivery_took_time, 
		case when delivery_took_time <15  then '5 star'
		when delivery_took_time between 15 and 20 then '4 star'
		else '3 star'
	 end as stars 

	from 
		(select 
		o.order_id,
		rider_id, 
		o.order_time, 
		d.delivery_time,
		extract(epoch from (d.delivery_time - o.order_time + case when d.delivery_time < o.order_time then interval '1 day' else interval '0 day' end))/60 
		as delivery_took_time
		from orders as o 
		join deliveries as d
		on o.order_id = d.order_id 
		where d.delivery_status='Completed')
		as t1
		)as t2
		group by 1,2 
		order by 1,3 desc

-------- peak days at restaurants

select r.restaurant_name,
TO_CHAR(o.order_date,'Day') as day, 
COUNT(o.order_id) as total_orders, 
Rank()over(partition by r.restaurant_name order by COUNT(o.order_id) desc) as rank 
from orders as o 
join restaurants as r 
on o.restaurant_id = r.restaurant_id 
group by 1,2 
order by 1,3 desc

------calculate total revenue of customer 
select o.customer_id, customer_name,
SUM(total_amount) as CLV
from orders as o 
join customers as c 
on o.customer_id=c.customer_id
group by 1,2

-----monthly trends

select 
extract (year from order_date) as year,
extract (month from order_date) as month,
SUM(total_amount) as total_revenue 
from orders 
group by 1,2 
order by 1,2

-------riders min and max delivery time

With new_table 
as

		(select  
		d.rider_id as riders_id,
		extract(epoch from (d.delivery_time - o.order_time + case when d.delivery_time < o.order_time then interval '1 day' else interval '0 day' end))/60 
				as time_deliver
		from orders as o 
		join deliveries as d
		on o.order_id = d.order_id 
		where d.delivery_status='Completed') ,
	riders_time as (select 
	riders_id,
	Avg(time_deliver) as avg_time
	from new_table
	group by 1	)

select min(avg_time), max(avg_time) from riders_time

------ seasons and their dishes 

select order_item, 
seasons, count(order_id) as total_orders
from 
	(select *, 
	extract (month from order_date) as month,
	CASE WHEN extract (month from order_date) BETWEEN 4 AND 6 THEN 'Spring'
		WHEN extract (month from order_date) > 6 AND 
		extract (month from order_date) < 9 THEN 'Summer' 
		ELSE 'Winter'
	END as seasons 
	from orders) as t1 
group by 1, 2

------rank cities 

select r.city,
SUM(total_amount) as total_revenue,
RANK() OVER(Order by SUM(total_amount) desc) as city_rank
from orders as o 
join restaurants as r 
on o.restaurant_id = r.restaurant_id 
Group by 1 
