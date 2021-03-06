create schema  Vehicle_Subscription;

create table Vehicles (
	Vehicle_Id int not null primary key auto_increment, 
	Vehicle_Name varchar(40) not null,
    Model int,
    Vehicle_Type varchar(30) not null,
    Seating_Capacity int not null,
    Vehicle_Features varchar(100),
    Registration_Number varchar(45),
	Local_Cost int not null,
	Subscription_Fee int,
    Insurance_No int
);
drop table vehicles;

create table Insurance(
	Insurance_No int(20)  not null primary key,
    Renewal_Fee int(6) not null,
    Ins_Company varchar(35) not null,
    Issue_Date date not null,
    Expiry_Date date not null
    );
drop table Insurance;
insert into Vehicles( Vehicle_Name, Model, Vehicle_Type, Seating_Capacity, Vehicle_Features, Registration_Number, Local_Cost, Subscription_Fee, Insurance_No)
			values( "BMW X1", 2020, "SportX", 5, "panoramic sunroof, rain-sensing wipers", "Dhaka Metro-Mo-0001", 8000000, 60000, 111),
				  ( "BMW X1", 2020, "SportX", 5, "panoramic sunroof, rain-sensing wipers", "Dhaka Metro-Mo-0002", 8000000, 60000, 112),
                  ( "BMW X1", 2020, "SportX", 5, "panoramic sunroof, rain-sensing wipers", "Dhaka Metro-Mo-0003", 8000000, 60000,113),
				  ( "Audi Q2", 2020, "SUV", 5, "ambient lighting, digital instrument cluster, cruise control","Dhaka Metro-Mo-0005", 7500000,58000, 114),
                  ( "Audi Q2", 2020, "SUV", 5, "ambient lighting, digital instrument cluster, cruise control","Dhaka Metro-Mo-0006", 7500000,58000, 115),
                  ( "Audi Q2", 2020, "SUV", 5, "ambient lighting, digital instrument cluster, cruise control","Dhaka Metro-Mo-0007", 7500000,58000, 116),
                  ( "Audi RS 7", 2020, "Sedan", 4, "Engine 3996 cc,Top Speed Upto 305kmph", "Dhaka Metro-Mo-0009", 17000000, 150000, 117),
                  ( "Audi RS 7", 2020, "Sedan", 4, "Engine 3996 cc,Top Speed Upto 305kmph", "Dhaka Metro-Mo-0010", 17000000, 150000, 118),                  
				  ( "Chevrolet RX5", 2019, "Sedan", 5, "Engine 2700 cc,Top Speed Upto 255kmph", "Dhaka Metro-Mo-0015",12000000, 70000, 119),
                  ( "Chevrolet RX5", 2019, "Sedan", 5, "Engine 2700 cc,Top Speed Upto 255kmph", "Dhaka Metro-Mo-0016",12000000, 70000, 120),
                  ( "Toyota Corolla Xr", 2018, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 205kmph", "Dhaka Metro-GHa-0020", 4000000, 35000, 121),
                  ( "Toyota Allion R", 2018, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 205kmph", "Dhaka Metro-GHa-0022", 4000000, 35000, 122),
                  ( "Toyota Premio Superior", 2019, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 220kmph", "Dhaka Metro-GHa-0024", 4500000, 40000, 123),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, "Engine 200 cc,Top Speed Upto 150kmph", "Dhaka Metro-La-0026", 180000, 8000,124),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, "Engine 200 cc,Top Speed Upto 150kmph", "Dhaka Metro-La-0027", 180000, 8000, 125),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, "Engine 200 cc,Top Speed Upto 150kmph", "Dhaka Metro-La-0028", 180000, 8000, 126),
                  ( "Honda CBR 250", 2020, "Bike", 2, "Engine 250 cc,Top Speed Upto 200kmph", "Dhaka Metro-La-0032", 300000, 12000, 127),
                  ( "Honda CBR 250", 2020, "Bike", 2, "Engine 250 cc,Top Speed Upto 200kmph", "Dhaka Metro-La-0016", 300000, 12000, 128),
                  ( "Yamaha Star VMAX", 2020, "Bike", 2, "Engine 1679 cc,Top Speed Upto 250kmph", "Dhaka Metro-La-0017", 1700000, 25000, 129),
                  ( "Yamaha Star VMAX", 2020, "Bike", 2, "Engine 1679 cc,Top Speed Upto 250kmph", "Dhaka Metro-La-0018", 1700000, 25000, 130);

select * from Vehicles;

truncate table Vehicles;

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
truncate table insurance;

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
    Location_Id int (4),
    
    Gender varchar (10)
);






drop table subscribers;
truncate table subscribers;
select * from Subscribers;


insert into Subscribers (Client_Id,ClientName, Phone_No, Address, Email,  National_Id , Vehicle_Id, Package_Id, Payment_id, LicenseExpiry_date,Gender,Location_Id )
values  (201,"Mahbub","11111111111", "Dhamrai", "mahbub@gmail.com", 95047100000,  2, 101, 301, str_to_date('10-Jan-25','%d-%b-%y'), "Male",1006),
		(202,"Jamil", "22222222222", "Puthia", "jamil42@gmail.com", 35045600000,  6, 102, 302, str_to_date('22-Nov-24','%d-%b-%y'),"Male",1002),
		(203,"Tonni", "33333333333", "Habiganj", "kader01@gmail.com", 56847100000,  9, null, 303, str_to_date('15-Feb-26','%d-%b-%y'),"Female",1001),
		(204,"Tanvir","44444444444", "Paikgachha", "tan506@gmail.com", 95047105600,  4, 104, 304, str_to_date('18-Dec-22','%d-%b-%y'),"Male",1004),
		(205,"Saif", "55555555555", "Kutubdia", "saif@gmail.com", 65047105600, 12, null, 305, str_to_date('27-Apr-25','%d-%b-%y'),"Male",1005),
		(206,"Manik", "66666666666", "Bandarban", "manik10@gmail.com", 23485105600, 5, 103, 306, str_to_date('30-Mar-24','%d-%b-%y'),"Male",1006),
		(207,"Adit", "77777777777", "Narayanganj", "adit@gmail.com", 23485102564,3 , null, 307, str_to_date('17-May-23','%d-%b-%y'),"Male",1007),
        (208,"Mostak", "88888888888", "Fullbaria", "mostak@gmail.com", 23924602564,1 , 105, 308, str_to_date('21-Jul-27','%d-%b-%y'),"Male",1001),
        (209,"Salmoon", "9999999999", "Banshkhali", "sal65@gmail.com", 4285102564,10 , 106, 309, str_to_date('11-Dec-25','%d-%b-%y'),"Male",1008),
        (210,"Tama", "10101010101", "Savar", "Tama101@gmail.com", 4528617564,4 , null, 310, str_to_date('14-Aug-24','%d-%b-%y'),"Female",1009),
        (211,"Pabel", "20202020202", "Dinajpur", "pabel@gmail.com", 4525672314,11 , 103, 311, str_to_date('26-Oct-22','%d-%b-%y'),"Male",1001),
		(212,"Samira", "30303030303", "Durgapur", "sam11@gmail.com", 4359672314,8 , null, 312, str_to_date('16-Mar-27','%d-%b-%y'),"Female",1006),
        (213,"Chung", "40404040404", "China", "chung@gmail.com", 4380497614,10 , null, 313, str_to_date('25-Sep-24','%d-%b-%y'),"Male",1001),
        (214,"Sam", "50505050505", "USA", "jhatla@gmail.com", 9460497614,7 , 102, 314, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1002),
        (215,"Tuba", "60606060606", "Godagari", "tuba@gmail.com", 9480195714,1 , 102, 315, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1010);
        
        


truncate table subscribers;
create table Subscription_Package
(
	Package_Id int,
    packageName varchar (20),
    Duration_In_Days int (10),
    Discount_in_percentage int (5),
    primary key (Package_Id)
);




select * from subscription_package;
drop table subscription_package;


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
Salary_ID int NOT NULL,
Phone_Number INT(11),
Email VARCHAR(25),
location_id NUMERIC(6)NOT NULL);
select *from employees;
insert into Employees(Employee_Id,E_Name,Job_Id,Salary_ID,Phone_Number,Email,Location_id)
 values
 ( 551,'KALAM','VEH_ASSO',881,0154298745,'klm@mail.com',1005),
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
 (564,'PALASH HQE','ASS_MENGER',894,017596455,'hqe@mail.comm',1005),
 (565,'KOWSHIK BOSH','ACC_SUPER',895,017854662,'bose@yahoo.com',1008),
 (566,'SUSMITA','CUS_SUPPER',896,NULL,NULL,1009),
 (567,'AMITAB BACH','ASS_MENGER',897,NULL,'abu@gnail.com',1009),
 (568,'SUFIA TAMANA','VEH_ASSO',898,015498762,NULL,1010),
 (579,'DEPIKA MIR','ASS_MENGER',899,NULL,NULL,1010),
 (580,'SIRAZ UDDIN','ACC_SUPER',900,0178946654,NULL,1006);
 

CREATE TABLE Warehouse_Locations(
Location_id NUMERIC(4) PRIMARY KEY,
Division VARCHAR(25),
City VARCHAR(30) NOT NULL,
Street_Address VARCHAR(40));
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
Paid_Amount decimal(15,5),
Payment_Date timestamp not null default now() 
);

alter table payment_log
modify paid_amount decimal(15,2);
select * from payment_log;

truncate table payment_log;

select s.Client_Id ,s.ClientName, v.Subscription_Fee-v.Subscription_Fee*(p.Discount_in_percentage/100) "Subscriber's payment with Package"
from subscribers s
join vehicles v
on s.vehicle_id=v.vehicle_id
join subscription_package p
on s.Package_Id=p.Package_Id;
            
select s.Client_Id ,s.ClientName, v.Subscription_Fee "Subscriber's payment without Package"
from subscribers s
join vehicles v
on s.vehicle_id=v.vehicle_id
where s.Package_Id is null;

select vehicle_Id, vehicle_name, model, Vehicle_Type, Seating_Capacity, Subscription_Fee 
from vehicles
order by Subscription_Fee desc;



select count(N.vehicle_name), N.Vehicle_Name
from (select s.Vehicle_Id , v.vehicle_name
		from subscribers s
		join vehicles v
		on s.Vehicle_Id = v.Vehicle_Id
		order by s.Vehicle_Id) N
        group by N.Vehicle_Name
        order by count(N.vehicle_name) desc;

select count(vehicle_name), Vehicle_name
from vehicles 
group by Vehicle_Name
order by count(vehicle_name) desc;

select count(vehicle_type), Vehicle_type
from vehicles 
group by Vehicle_type
order by count(vehicle_type) desc, Vehicle_Type;

create table Emp_Salary_Log(
Outvoice_No int primary key not null auto_increment,
Salary_Id int not null,
Salary_Amount decimal(8,2),
Salary_Date timestamp  not null default now()
);
drop table emp_Salary_Log;
truncate table emp_Salary_Log;


