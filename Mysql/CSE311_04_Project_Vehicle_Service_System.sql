create schema  Vehicle_Subscription;

create table Exporters_Info
(
    Exporters_Id int (5),
    Vehicle_Name varchar (40),
    Company_Name varchar (30),
    Country varchar (20),
    Exporting_Cost int (10),
    Original_Cost int (10),
    Vehicle_Quantity int (5),
    primary key (Exporters_Id)
);

select * from Exporters_Info;

insert into Exporters_Info (Exporters_Id,Vehicle_Name, Company_Name, Country, Exporting_Cost, Original_Cost, Vehicle_Quantity)
values (701, "BMW X1", "BMW Company","Germany",60000,12000000,3),
       (702,"Audi Q2", "Audi Company","Germany",53000,11250000,3),
       (703,"Audi RS 7", "Audi Sport GmbH","Germany",65000,17000000,3),
       (704,"Chevrolet RX5", "Chevrolet Company","China",50000,12000000,2),
       (705,"Toyota Corolla Xr", "Toyota Corolla Company","China",35000,4000000,1),
       (706,"Toyota Allion R", "Toyota Allion Company","Japan",35000,4000000,1),
       (707,"Toyota Premio Superior", "Toyota Allion Company","Japan",37000,4500000,1),
       (708,"The New Royal Enfield Classic 350", "Eicher Motors Limited","India",20000,270000,3),
       (709,"Honda CBR 250", "Honda","Thailand",22000,300000,2),
       (710,"Yamaha Star VMAX", "Yamaha Motor Company","Japan",17000,1700000,2);

create table Vehicles (
	Vehicle_Id int not null primary key auto_increment, 
	Vehicle_Name varchar(40) not null,
    Model int,
    Vehicle_Type varchar(30) not null,
    Seating_Capacity int not null,
    Engine_in_CC int,
    Top_Speed_Kmph int,
    Registration_Number varchar(45),
	Local_Cost int not null,
	Subscription_Fee int,
    Insurance_No int, 
    foreign key(Insurance_No) references Insurance(Insurance_No)
);


create table Insurance(
	Insurance_No int(20)  not null primary key,
    Renewal_Fee int(6) not null,
    Ins_Company varchar(35) not null,
    Issue_Date date not null,
    Expiry_Date date not null
    );

insert into Vehicles( Vehicle_Name, Model, Vehicle_Type, Seating_Capacity, Engine_in_CC, Top_Speed_Kmph, Registration_Number, Local_Cost, Subscription_Fee, Insurance_No)
			values( "BMW X1", 2020, "SportX", 5, 3880, 300, "Dhaka Metro-Mo-0001", 8000000, 60000, 111),
				  ( "BMW X1", 2020, "SportX", 5, 3880, 300, "Dhaka Metro-Mo-0002", 8000000, 60000, 112),
                  ( "BMW X1", 2020, "SportX", 5, 3880, 300, "Dhaka Metro-Mo-0003", 8000000, 60000,113),
				  ( "Audi Q2", 2020, "SUV", 5, 3780, 290,"Dhaka Metro-Mo-0005", 7500000,58000, 114),
                  ( "Audi Q2", 2020, "SUV", 5, 3780, 290,"Dhaka Metro-Mo-0006", 7500000,58000, 115),
                  ( "Audi Q2", 2020, "SUV", 5, 3780, 290,"Dhaka Metro-Mo-0007", 7500000,58000, 116),
                  ( "Audi RS 7", 2020, "Sedan", 4, 3996 , 305, "Dhaka Metro-Mo-0009", 17000000, 150000, 117),
                  ( "Audi RS 7", 2020, "Sedan", 4, 3996 , 305, "Dhaka Metro-Mo-0010", 17000000, 150000, 118),                  
				  ( "Chevrolet RX5", 2019, "Sedan", 5, 2700, 255, "Dhaka Metro-Mo-0015",12000000, 70000, 119),
                  ( "Chevrolet RX5", 2019, "Sedan", 5, 2700, 255, "Dhaka Metro-Mo-0016",12000000, 70000, 120),
                  ( "Toyota Corolla Xr", 2018, "Sedan", 4, 1650, 205, "Dhaka Metro-GHa-0020", 4000000, 35000, 121),
                  ( "Toyota Allion R", 2018, "Sedan", 4, 1650, 205, "Dhaka Metro-GHa-0022", 4000000, 35000, 122),
                  ( "Toyota Premio Superior", 2019, "Sedan", 4,  1650, 220, "Dhaka Metro-GHa-0024", 4500000, 40000, 123),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, 200, 150, "Dhaka Metro-La-0026", 180000, 8000,124),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2,200, 150, "Dhaka Metro-La-0027", 180000, 8000, 125),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, 200, 150, "Dhaka Metro-La-0028", 180000, 8000, 126),
                  ( "Honda CBR 250", 2020, "Bike", 2, 250, 200, "Dhaka Metro-La-0032", 300000, 12000, 127),
                  ( "Honda CBR 250", 2020, "Bike", 2,  250, 200, "Dhaka Metro-La-0016", 300000, 12000, 128),
                  ( "Yamaha Star VMAX", 2020, "Bike", 2, 1679, 250, "Dhaka Metro-La-0017", 1700000, 25000, 129),
                  ( "Yamaha Star VMAX", 2020, "Bike", 2, 1679, 250, "Dhaka Metro-La-0018", 1700000, 25000, 130);

select * from Vehicles;

 insert into Insurance( Insurance_No, Renewal_Fee, Ins_Company, Issue_Date, Expiry_Date)
			 values( 111, 40000, "ABC Insurance Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2022-Jan-01", "%Y-%b-%d")),
             ( 112, 35000, "Digital Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2023-Jan-01", "%Y-%b-%d")),
             ( 113, 60000, "A Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2024-Jan-01", "%Y-%b-%d")), 
			 ( 114, 35000, "B Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2025-Jan-01", "%Y-%b-%d")),
             ( 115, 40000, "C Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2026-Jan-01", "%Y-%b-%d")),
             ( 116, 30000, "D Insurance Company Ltd", str_to_date("2022-Feb-01", "%Y-%b-%d"), str_to_date("2027-Jul-01", "%Y-%b-%d")),
             ( 117, 30000, "E Insurance Company Ltd", str_to_date("2022-Mar-15", "%Y-%b-%d"), str_to_date("2022-Jun-15", "%Y-%b-%d")),
             (118, 25000, "F Insurance Company Ltd", str_to_date("2022-Dec-31", "%Y-%b-%d"), str_to_date("2025-Dec-12", "%Y-%b-%d")),
             (119, 22000, "G Insurance Company Ltd", str_to_date("2022-Nov-01", "%Y-%b-%d"), str_to_date("2026-Dec-11", "%Y-%b-%d")),
             ( 120, 22000, "C Insurance Company Ltd", str_to_date("2023-Jan-01", "%Y-%b-%d"), str_to_date("2026-Feb-03", "%Y-%b-%d")),
             ( 121, 22000, "C Insurance Company Ltd", str_to_date("2022-Jun-01", "%Y-%b-%d"), str_to_date("2026-Aug-15", "%Y-%b-%d")),
             ( 122, 20000, "C Insurance Company Ltd", str_to_date("2022-Jan-11", "%Y-%b-%d"), str_to_date("2026-Jan-31", "%Y-%b-%d")),
             ( 123, 20000, "C Insurance Company Ltd", str_to_date("2023-Jan-15", "%Y-%b-%d"), str_to_date("2026-Feb-01", "%Y-%b-%d")),
             ( 124, 15000, "C Insurance Company Ltd", str_to_date("2020-Jan-01", "%Y-%b-%d"), str_to_date("2026-Mar-01", "%Y-%b-%d")),
             ( 125, 15000, "C Insurance Company Ltd", str_to_date("2022-Oct-01", "%Y-%b-%d"), str_to_date("2026-Oct-17", "%Y-%b-%d")),
             ( 126, 15000, "Moto Insurance Company Ltd", str_to_date("2022-Jan-01", "%Y-%b-%d"), str_to_date("2024-Nov-22", "%Y-%b-%d")),
             (127, 10000,"Moto Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2023-Dec-31", "%Y-%b-%d")),
             (128, 10000,"Moto Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2023-Dec-31", "%Y-%b-%d")),
             (129, 10000,"Moto Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2023-Dec-31", "%Y-%b-%d")),
             (130, 10000,"Moto Insurance Company Ltd", str_to_date("2021-Jan-01", "%Y-%b-%d"), str_to_date("2023-Dec-31", "%Y-%b-%d"));

select * from insurance;


create table Subscribers
(
    Client_Id int primary key not null,
    ClientName varchar (20) not null,
    Phone_No varchar (11),
    Address varchar (40) not null,
    Email varchar (20),
    National_Id int8,
    Vehicle_Id int (5) not null,
    Package_Id int (5),
    Payment_id int (5),
    LicenseExpiry_date date,
    Location_id NUMERIC(6),
    Gender varchar (10),
    expiry_date date,
    Wants_to_Extend varchar(3),
    foreign key(Vehicle_Id) references Vehicles(Vehicle_Id),
    foreign key(Package_Id) references Subscription_Package(Package_Id),
    foreign key(Location_Id) references warehouse_locations(Location_Id)

);


select * from Subscribers;

insert into Subscribers (Client_Id,ClientName, Phone_No, Address, Email,  National_Id , Vehicle_Id, Package_Id, Payment_id, LicenseExpiry_date,Gender,Location_Id,expiry_date, Wants_to_Extend)
values  (201,"Mahbub","11111111111", "Dhamrai", "mahbub@gmail.com", 95047100000,  2, 101, 301, str_to_date('10-Jan-25','%d-%b-%y'), "Male",1006, str_to_date('13-Mar-21','%d-%b-%y'),"Yes"),
		(202,"Jamil", "22222222222", "Puthia", "jamil42@gmail.com", 35045600000,  6, 102, 302, str_to_date('22-Nov-24','%d-%b-%y'),"Male",1002, str_to_date('13-Apr-21','%d-%b-%y'),"Yes"),
		(203,"Tonni", "33333333333", "Habiganj", "kader01@gmail.com", 56847100000,  9, null, 303, str_to_date('15-Feb-26','%d-%b-%y'),"Female",1001, str_to_date('13-Feb-21','%d-%b-%y'), "No"),
		(204,"Tanvir","44444444444", "Paikgachha", "tan506@gmail.com", 95047105600,  4, 104, 304, str_to_date('18-Dec-22','%d-%b-%y'),"Male",1004, str_to_date('13-May-21','%d-%b-%y'), "No"),
		(205,"Saif", "55555555555", "Kutubdia", "saif@gmail.com", 65047105600, 12, null, 305, str_to_date('27-Apr-25','%d-%b-%y'),"Male",1005, str_to_date('13-Feb-21','%d-%b-%y'), "No"),
		(206,"Manik", "66666666666", "Bandarban", "manik10@gmail.com", 23485105600, 5, 103, 306, str_to_date('30-Mar-24','%d-%b-%y'),"Male",1006, str_to_date('28-Apr-21','%d-%b-%y'), "No"),
		(207,"Adit", "77777777777", "Narayanganj", "adit@gmail.com", 23485102564,3 , null, 307, str_to_date('17-May-23','%d-%b-%y'),"Male",1007, str_to_date('13-Feb-21','%d-%b-%y'),"Yes"),
        (208,"Mostak", "88888888888", "Fullbaria", "mostak@gmail.com", 23924602564,1 , 105, 308, str_to_date('21-Jul-27','%d-%b-%y'),"Male",1001, str_to_date('28-May-21','%d-%b-%y'), "No"),
        (209,"Salmoon", "9999999999", "Banshkhali", "sal65@gmail.com", 4285102564,10 , 106, 309, str_to_date('11-Dec-25','%d-%b-%y'),"Male",1008, str_to_date('13-Jun-21','%d-%b-%y'), "No"),
        (210,"Tama", "10101010101", "Savar", "Tama101@gmail.com", 4528617564,4 , null, 310, str_to_date('14-Aug-24','%d-%b-%y'),"Female",1009, str_to_date('13-Feb-21','%d-%b-%y'),"Yes"),
        (211,"Pabel", "20202020202", "Dinajpur", "pabel@gmail.com", 4525672314,11 , 103, 311, str_to_date('26-Oct-22','%d-%b-%y'),"Male",1001, str_to_date('28-Apr-21','%d-%b-%y'), "No"),
		(212,"Samira", "30303030303", "Durgapur", "sam11@gmail.com", 4359672314,8 , null, 312, str_to_date('16-Mar-27','%d-%b-%y'),"Female",1006, str_to_date('13-Feb-21','%d-%b-%y'), "No"),
        (213,"Chung", "40404040404", "China", "chung@gmail.com", 4380497614,10 , null, 313, str_to_date('25-Sep-24','%d-%b-%y'),"Male",1001, str_to_date('13-feb-21','%d-%b-%y'), "No"),
        (214,"Sam", "50505050505", "USA", "jhatla@gmail.com", 9460497614,7 , 102, 314, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1002, str_to_date('13-Apr-21','%d-%b-%y'), "No"),
        (215,"Tuba", "60606060606", "Godagari", "tuba@gmail.com", 9480195714,1 , 102, 315, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1010, str_to_date('13-Apr-21','%d-%b-%y'),"Yes");
select * from subscribers;        

create table Subscription_Package
(
	Package_Id int,
    packageName varchar (20),
    Duration_In_Days int (10),
    Discount_in_percentage int (5),
    primary key (Package_Id)
);

select * from subscription_package;

insert into subscription_package(Package_Id, packageName, Duration_In_Days, Discount_in_percentage)
values  (101, "Championship", 60, 5),
		(102, "Tokkor", 90, 10),
        (103, "Race", 105, 15),
        (104, "Rider", 120, 20),
        (105, "vikings", 135, 25),
        (106, "SuperRider", 150, 30);
        
CREATE TABLE Employees(
Employee_Id int not null,
E_Name VARCHAR(20) not null,
Job_Id VARCHAR(10) NOT NULL,
Salary_ID int NOT NULL ,
Phone_Number INT(11),
Email VARCHAR(25),
location_id NUMERIC(6)NOT NULL,
Foreign key(job_Id) references emp_salary(job_id),
Foreign key(location_id) references Warehouse_Locations(location_id)
);


select *from employees;

insert into employees(Employee_Id,E_Name,Job_Id,Salary_ID,Phone_Number,Email,Location_id)
 values
 (551,'KALAM','VEH_ASSO',881,0154298745,'klm@mail.com',1005),
 (552,'ASIF KARIM','AD_ASSI',882,014799648,'arif@yahoo.com',1001),
 (553,'ALI MAHIN','ASS_MANGER',883,01687495,'mahi@gmail.com',1002),
 (554,'ARNOB ROY','ACC_SUPER',884,0178954661,NULL,1001),
 (555,'SIAM HOSSIAN','CUS_AD',885,014569875,'siam@gmail.com',1002),
 (556,'FAZLA RABY','AD_ASSI',886,0169745899,'rabby@yahoo.com',1003),
 (557,'SAMIN YESAR','VEH_ASSO','887',0165478895,'Yes@mail.com',1001),
 (558,'MEHEDI IVN','ACC_SUPER',888,0198756478,'ivn@gmil.com',1004),
 (559,'ROHAN ISLAM','CUS_SUP',889,0148796145,'roh@mail.com',1005),
 (560,'FARDIN','IT_DEVP',890,0145878566,'nill@mail.com',1007),
 (561,'RAFIN SAMS','ASS_MANGER',891,016254977,'sam@mail.com',1007),
 (562,'HAMZA','DAM_TRAINE',892,012457855,'hzd@gamil.com',1008),
 (563,'AYON BISWAS','VEH_ASSO',893,014789654,'noyon@yahoo.com',1004),
 (564,'PALASH HQE','ASS_MANGER',894,017596455,'hqe@mail.comm',1005),
 (565,'KOWSHIK BOSH','ACC_SUPER',895,017854662,'bose@yahoo.com',1008),
 (566,'SUSMITA','CUS_SUPPER',896,NULL,NULL,1009),
 (567,'AMITAB BACH','ASS_MANGER',897,NULL,'abu@gnail.com',1009),
 (568,'SUFIA TAMANA','VEH_ASSO',898,015498762,NULL,1010),
 (579,'DEPIKA MIR','ASS_MANGER',899,NULL,NULL,1010),
 (580,'SIRAZ UDDIN','ACC_SUPER',900,0178946654,NULL,1006);
 
create table Emp_Salary(
job_id varchar(10) primary key  not null,
Salary_Amount numeric(8,2)
);

insert into emp_salary( Job_id, Salary_Amount)
values('VEH_ASSO',27000),
 ('AD_ASSI',25000),
 ('ASS_MANGER',30000),
 ('ACC_SUPER',20000),
 ('CUS_AD',15000),
 ('CUS_SUP',16000),
 ('IT_DEVP',25000),
 ('DAM_TRAINE',10000),
 ('CUS_SUPPER',18000);
 
 
CREATE TABLE Warehouse_Locations(
Location_id NUMERIC(6) PRIMARY KEY not null,
Division VARCHAR(25),
City VARCHAR(30) NOT NULL,
Street_Address VARCHAR(40));

select * from warehouse_locations;

insert into warehouse_locations (Location_id,Division,City,Street_Address)
values(1001,'DHAKA','GAZIPUR','Bipsot training Area'),
(1002,'CHITTAGONG','RANGMATI','4A Kaptai Lake Road'),
(1003,'KHULNA','LOCKPUR','M/S Lata Enterprise street'),
(1004,'SYLHET','GOWAINGAT','Jaflong Station'),
(1005,'SYLHET','MOULVIBAZAR','Lawachara National Park Road'),
(1006,'CHITTAGONG','COX.S BAZAR','Laboni Ponit,Beach Road'),
(1007,'DHAKA',"NAWABGANJ",'KOLATOLI SHAIKA Residential Area'),
(1008,'DHAKA','DHAKA','CENTRAL Road Uttara'),
(1009,'RANGPUR','RANGPUR','Police Line Road,569'),
(1010,'BARISHAL','PATUAKHALI','PATUAKHALI sador Road , Risen Hotel');


create table Payment_Log(
Invoice_No int primary key not null auto_increment,
payment_Id int not null,
Paid_Amount decimal(15,2),
Payment_Date timestamp not null default now()
);

select * from payment_log;

create table Emp_Salary_Log(
Outvoice_No int primary key not null auto_increment,
Salary_Id int not null,
Salary_Amount decimal(8,2),
Salary_Date timestamp  not null default now()
);


-- Tables end


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


