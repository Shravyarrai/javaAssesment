create table studss(
id serial primary key,
name varchar(50) not null,
email varchar(50) unique,
age int,
marks decimal(10,3)
);
//-------------Insert----------
insert into studss values(3,'rahul','rahuk@gamil.com',22,54.7);
insert into studss values(4,'Radha','radha@gamil.com',23,71.7);
insert into studss values(5,'Raju','raju@gamil.com',17,81.7);

select * from studss;
//-----------------age>21------------
select * from studss where age>21;

//-----------Update----------
update studss set email='rahul@gmail.com' where id=5;
select * from studss;

//--------age<81----------------
delete from studss where age<18;
select * from studss;

//--------------------2nd heightest------------------------
select * from studss where marks is not null order by marks desc limit 1 offset 1;

//--------------STUDENTS-----------------
create table studentss(
id int primary key,
name varchar(50) not null,
age int
);

create table courses(
course_id int,
student_id int,
course_name varchar(50),
foreign key(student_id) references studentss(id)
)

insert into studentss values(1,'Rahul',22);
insert into studentss values(2,'Priya',21);
insert into studentss values(3,'Akash',23);

insert into courses values(101,1,'Java')
insert into courses values(102,2,'Python')
insert into courses values(103,1,'Sql')

select * from courses

select s.name,c.course_name from studentss s on inner join  courses c s.student_id=c.student_id;




