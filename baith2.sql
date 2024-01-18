drop database if exists quan_ly_sinh_vien_p;
create database if not exists quan_ly_sinh_vien_p;
use quan_ly_sinh_vien_p;
create table classp(
class_id int primary key auto_increment,
class_name varchar(60) not null,
start_date datetime not null,
stasus bit not null
);
create table studentp(
student_id int primary key auto_increment,
student_name varchar(30) not null,
address varchar(30),
phone varchar(30),
status bit,
class_id int,
foreign key (class_id) references classp(class_id)
);
create table subjectp (
sub_id int primary key auto_increment,
sub_name varchar(30) not null,
credit tinyint not null default 1 check (credit >=1),
status_s bit default 1
);
create table mark(
mark_id int primary key auto_increment,
sub_id int not null unique key,
student_id int not null unique key,
mark float default 0 check (mark between 0 and 100),
exam_times tinyint default 1,
foreign key (sub_id) references subjectp(sub_id),
foreign key (student_id) references studentp(student_id)
);
