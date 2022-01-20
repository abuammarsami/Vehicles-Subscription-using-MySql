-- functions to fulfill the projct's goal.

-- If any Subscriber wants to renew subscription period with or without package or will have to return the vehicle. 

select Extend_Subscription_Period_or_return_vehicles(214, null, "Yes");

select * from subscribers;

 update subscribers
set expiry_date = CurDate()
where client_id =214;


-- Function to pay salary to an employee.
select Pay_Salary(887, (select salary_amount
                        from emp_salary s
                        join employees e
                        on s.Job_Id = e.job_id
                        where salary_id = 887));

select * from emp_salary_log;


-- Queries to reach our goals.


-- Subscribers Who enroll package
select s.Client_Id ,s.ClientName, v.Subscription_Fee-v.Subscription_Fee*(p.Discount_in_percentage/100) "Subscriber's payment with Package"
from subscribers s
join vehicles v
on s.vehicle_id=v.vehicle_id
join subscription_package p
on s.Package_Id=p.Package_Id; 
 
 -- Subscribers Who did not enroll packages
select s.Client_Id ,s.ClientName, v.Subscription_Fee "Subscriber's payment without Package"
from subscribers s
join vehicles v
on s.vehicle_id=v.vehicle_id
where s.Package_Id is null; 

-- Vehicles with highest subscription fee
select distinct vehicle_name, model, Vehicle_Type, Seating_Capacity, Subscription_Fee 
from vehicles
order by Subscription_Fee desc; 


-- Most demanding Cars
select count(N.vehicle_name) "Total Subscribed Times", N.Vehicle_Name
from (select s.Vehicle_Id , v.vehicle_name
		from subscribers s
		join vehicles v
		on s.Vehicle_Id = v.Vehicle_Id
		order by s.Vehicle_Id) N
        group by N.Vehicle_Name
        order by count(N.vehicle_name) desc; 

-- Total unit Of Same Vehicle
select count(vehicle_name) Unit, Vehicle_name
from vehicles 
group by Vehicle_Name
order by count(vehicle_name) desc;


-- Total unit of Same Vehicle Type
select count(vehicle_type) "Unit", Vehicle_type
from vehicles 
group by Vehicle_type
order by count(vehicle_type) desc, Vehicle_Type;



-- Top Featured Vehicle
select Vehicle_Name, vehicle_type, Seating_Capacity,concat("Engine is ", Engine_in_CC, " cc and Top Speed is ",Top_Speed_kmph," kmph") "Top Feature", count(Vehicle_Id) "Unit"
from vehicles 
where Top_Speed_Kmph =( select max(Top_Speed_Kmph) from vehicles) and Engine_in_CC =( select max(Engine_in_CC) from vehicles); 

-- Subscribed Vehicle
select distinct v.Vehicle_Id, v.Vehicle_Name 
from vehicles v
join subscribers s
on v.Vehicle_Id = s.Vehicle_Id; 



-- Unsubscribed or Remaining Vehicles 
select Vehicle_Name, vehicle_Type, count(Vehicle_Name) "Unit" 
from vehicles v
left join subscribers s
on v.Vehicle_Id = s.Vehicle_Id
where s.Vehicle_Id is null
group by Vehicle_Name
order by count(Vehicle_Name); 

-- query total invesment on vehicle

select sum(e.Exporting_Cost) + sum(v.Local_Cost) as "Total Invesment"
from exporters_info e
join vehicles v
on e.Vehicle_Name = v.Vehicle_Name;

-- query total Expense

select sum(e.Exporting_Cost) + sum(v.Local_Cost) as "Total Expense"
from exporters_info e
join vehicles v
on e.Vehicle_Name = v.Vehicle_Name
union
select sum(salary_amount) from emp_salary_log;

-- query to find the quantity of vehicle exporting company 

select Company_Name, Vehicle_Quantity
from exporters_info
order by Vehicle_Quantity desc;

-- subscription per division

select count(WL.Division) as "Total Subscription", WL.Division 
from warehouse_locations WL
join subscribers VS
on WL.location_id = VS.location_id
group by WL.Division; 

-- income from subbscription.
select sum(Subscription_Fee) as 'INCOME FROM SUBCRITION VCH'from vehicles; 


-- discont in total
select  SUM(Discount_in_percentage)/100 ' total given DISCOUNT(%) ' from subscription_package; 


-- Delete test

-- If a vehicle is no longer available for our campany.
delete from vehicles 
where Vehicle_Id = 20;

-- If subscription period ends.
delete from subscribers 
where expiry_date = str_to_date('13-Feb-21','%d-%b-%y') and Wants_to_Extend ="No";


-- Update test

-- If the customer wants to renew his subscription with package
update subscribers
 set  Package_Id=101, expiry_date = DATE_ADD(CURDATE(), Interval (select duration_in_days 
											    from subscription_package
												where Package_Id=101) Day), Wants_to_Extend = "Yes"
 where expiry_date = CURDATE()  and client_id=215;
 
-- increase subscription fee
update vehicles
set Subscription_Fee=60000
where vehicle_id=3;

-- updating client's discount
update Subscribers
set package_id = null
where Client_Id= 203;

select * from subscribers;

-- updating subscription fees
update vehicles
set Subscription_Fee=60000
where Vehicle_id = 1;


