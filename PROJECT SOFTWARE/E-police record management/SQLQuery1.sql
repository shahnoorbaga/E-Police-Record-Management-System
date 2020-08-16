create database E_Police_Record_Management
use E_Police_Record_Management
create Table Admin_Login
(
Username varchar(800),
Password varchar(800)
)
insert into Admin_Login values('admin','admin')
select * from Admin_Login

create table Police_Station
(P_ID varchar(5),
P_Name varchar(800),
P_Area varchar(800),
P_Inspector varchar(800),
Username varchar(800),
Password varchar(800))

select * from Police_station
delete from Police_station where P_ID='P0002'

create table Police_Login
(Username varchar(800),
Password varchar(800))

select * from Police_Login

create table Citizen
(C_Id varchar(5),
C_Name varchar(800),
C_Gender varchar(800),
C_Contact varchar(800),
C_Address varchar(800),
C_Email varchar(800),
C_Adhar varchar(800),
C_Username varchar(800))

drop table  Citizen

select * from Citizen
select * from Citizen where 'C_Id' like '%C0001%'
select * from Citizen where C_Name like '%Ab%'
select C_Adhar from citizen

create table Complaints
(C_ID varchar(5),
C_Des varchar(800),
C_Date datetime,
C_From varchar(800),
C_Against varchar(800),
C_Username varchar(800))

drop table Complaints
select * from  Complaints