create database Company;

use company;

create table Employee (
Employee_id int primary key ,
First_Name varchar(50),
Last_name varchar(50),
Email varchar(100),
Department_id int,
manager_id int,
Salary varchar(20));



Select * from Employee;
alter table Employee drop column manager_id ;

Insert into employee (Employee_id,First_Name,Last_name,Email,Department_id,Salary)
 values
 (101,"Priya","Rastuki","priyarastuki@gmail.com", "201", 25000),
 (102,"Rashi", "Rawat","rashirawat@gmail.com",202,23000),
 (103,"Sakshi", "Chaudhari", "sakshichaudhari@gmail.com",203,59000),
 (104,"Naina", "Maheshwari", "nainamaheshwari@gmail.com", 204 ,40000),
( 105,"Shrusti" ,"Gupta", "shrushtigupta@gmail.com" , 205,60000);


create table Department(
Department_id int primary key ,
Department_name varchar(100),
Location_id int );

insert into department (department_id, Department_name,location_id) values
(201,"IT",301),(202,"HR",302),(203,"IT",303), (204,"IT",304),(205,"Sales",305);


create table Location(Location_id int primary key,
city varchar (50),
office_name varchar(100));
insert into location (location_id,city,office_name) values (401,"Nagpur","IT"),
(402,"Pune","HR"),(403,"Delhi","IT"),(404,"Pune","IT"),(405,"Nagpur","Sales"); 


CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    check_in TIME,
    check_out TIME,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));
    INSERT INTO Attendance VALUES
(501, 101, '2026-09-01', 'Present', '09:15:00', '18:00:00'),
(502, 102, '2026-09-01', 'Present', '09:30:00', '18:10:00'),
(503, 103, '2026-09-01', 'Absent', NULL, NULL),
(504, 104, '2026-09-01', 'Work From Home', '09:20:00', '18:00:00'),
(505, 105, '2026-09-01', 'Present', '09:05:00', '17:50:00');



CREATE TABLE `Leave`(
    leave_id INT PRIMARY KEY,
    employee_id INT,
    leave_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),
    reason VARCHAR(255),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO `Leave` VALUES
(601, 101, 'Casual Leave', '2026-08-10', '2026-08-11', 'Approved', 'Personal work'),
(602, 102, 'Sick Leave', '2026-08-15', '2026-08-15', 'Approved', 'Not feeling well'),
(603, 103, 'Casual Leave', '2026-08-20', '2026-08-21', 'Approved', 'Family function'),
(604, 104, 'Earned Leave', '2026-08-25', '2026-08-27', 'Approved', 'Vacation'),
(605, 105, 'Sick Leave', '2026-08-30', '2026-08-30', 'Pending', 'Health issue');



CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    employee_id INT,
    payroll_month DATE,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deduction DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Payroll VALUES
(701, 101, '2026-09-01', 55000, 5000, 2000, 58000),
(702, 102, '2026-09-01', 45000, 3000, 1500, 46500),
(703, 103, '2026-09-01', 70000, 7000, 2500, 74500),
(704, 104, '2026-09-01', 50000, 4000, 2000, 52000),
(705, 105, '2026-09-01', 60000, 6000, 2500, 63500);

Use company;
Select * from attendance;
Select * from department;
alter table attendance 
 add constraint FK_employee
 foreign key (employee_id)
 references employee(employee_id);
 
 
 alter table attendance 
 drop constraint FK_employee;
 
 alter table employee
 add constraint FK_Department
 foreign key (Department_id)
 references Department(Department_id);
 
 Select * from department;
 select * from location ;
 update location 
set location_id = case
 when location_id =201 then 301
 when location_id =202 then 302
 when location_id =203 then 303
 when location_id =204 then 304
 when location_id =205 then 305
 end
 Where location_id in (201,202,203,204,205);
 
 
 select * from Attendance;
 select * from department;
  select * from employee;
   select * from `leave`;
    select * from location;
     select * from payroll;
 Alter table department
 add constraint fk_Location
 foreign key (location_id)
 references location (location_id);
 