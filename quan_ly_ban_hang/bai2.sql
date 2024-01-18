drop database if exists quan_ly_ban_hang_th;
create database if not exists quan_ly_ban_hang_th;
use quan_ly_ban_hang_th;
create table customer(
c_id int primary key auto_increment,
c_name varchar(50) not null,
c_age int check(c_age>0)
);
create table order_h(
o_id int primary key auto_increment,
c_id int,
o_date date,
o_total_price int,
foreign key (c_id) references customer(c_id)
);
create table product(
p_id int primary key auto_increment,
p_name varchar(50) not null,
p_price int
);
create table order_detail(
o_id int,
p_id int,
o_d_qty int,
primary key (o_id,p_id),
foreign key (o_id) references order_h(o_id),
foreign key (p_id) references product(p_id)
);
