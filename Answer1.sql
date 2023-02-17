
create database ERP_APP;
create database CRM_APP;

use ERP_APP;

create table Employees
(
    id         int auto_increment primary key,
    full_name  varchar(50) not null,
    birth_date date,
    address    varchar(100),
    phone      varchar(50) not null,
    is_active  boolean     not null,
    ball       int         not null check ( ball >= 1 and ball <= 5 )
);

use CRM_APP;

create table Students
(
    id         int auto_increment primary key,
    full_name  varchar(50) not null,
    birth_date date,
    address    varchar(100),
    phone      varchar(50) not null
);

use ERP_APP;


insert into Students(id, full_name, birth_date, address, phone)
select id, full_name, birth_date, address, phone
from ERP_APP.Employees
where is_active = true
  and ball >= 3;

select *
from Students;

