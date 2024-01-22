drop database if exists quan_ly_hoc_vien;
create database if not exists quan_ly_hoc_vien;
use quan_ly_hoc_vien;
create table address(
address_id int primary key auto_increment,
address_name varchar(50) not null
);
create table classes(
class_id int primary key auto_increment,
name_class varchar(50) not null,
language_class varchar(50) not null,
description_class varchar(50) not null
);
create table students(
student_id int primary key auto_increment,
full_name varchar(50) not null,
address_id int,
age int,
phone varchar(50) unique not null,
class_id int,
foreign key (address_id) references address(address_id),
foreign key (class_id) references classes(class_id)
);
 create table course(
 course_id int primary key auto_increment,
 name_course varchar(50) not null,
 description_c varchar(50) not null
 );
create table points(
point_id int primary key auto_increment,
course_id int,
student_id int,
point_s float check(point_s>0),
foreign key (course_id) references course(course_id),
foreign key (student_id) references students(student_id)
);

INSERT INTO `quan_ly_hoc_vien`.`address` (`address_id`, `address_name`) VALUES ('1', 'quang binh');
INSERT INTO `quan_ly_hoc_vien`.`address` (`address_id`, `address_name`) VALUES ('2', 'quang tri');
INSERT INTO `quan_ly_hoc_vien`.`address` (`address_id`, `address_name`) VALUES ('3', 'hue');
INSERT INTO `quan_ly_hoc_vien`.`address` (`address_id`, `address_name`) VALUES ('4', 'da nang');
INSERT INTO `quan_ly_hoc_vien`.`address` (`address_id`, `address_name`) VALUES ('5', 'quang nam');

INSERT INTO `quan_ly_hoc_vien`.`classes` (`class_id`, `name_class`, `language_class`, `description_class`) VALUES ('1', 'c0123g1', 'java', 'kho');
INSERT INTO `quan_ly_hoc_vien`.`classes` (`class_id`, `name_class`, `language_class`, `description_class`) VALUES ('2', 'c0223g1', 'php', 'de');
INSERT INTO `quan_ly_hoc_vien`.`classes` (`class_id`, `name_class`, `language_class`, `description_class`) VALUES ('3', 'c0123g1', 'node', 'vua vua');
INSERT INTO `quan_ly_hoc_vien`.`classes` (`class_id`, `name_class`, `language_class`, `description_class`) VALUES ('4', 'c0323g1', 'javascript', 'trung binh');
INSERT INTO `quan_ly_hoc_vien`.`classes` (`class_id`, `name_class`, `language_class`, `description_class`) VALUES ('5', 'c0123g1', 'java', 'kho');

INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('1', 'nguyen van anh', '1', '20', '0123', '1');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('2', 'nguyen van b', '2', '21', '0124', '2');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('3', 'nguyen van c', '3', '22', '0125', '3');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('4', 'le van anh', '4', '25', '0126', '4');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('5', 'le van e', '5', '17', '0127', '1');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('6', 'le van f', '5', '29', '0128', '2');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('7', 'le van g', '4', '15', '0129', '3');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('8', 'le van h', '3', '24', '0130', '4');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('9', 'le van i', '2', '28', '0131', '5');
INSERT INTO `quan_ly_hoc_vien`.`students` (`student_id`, `full_name`, `address_id`, `age`, `phone`, `class_id`) VALUES ('10', 'le van k', '1', '23', '0132', '4');

INSERT INTO `quan_ly_hoc_vien`.`course` (`course_id`, `name_course`, `description_c`) VALUES ('1', 'full time', '6 tháng');
INSERT INTO `quan_ly_hoc_vien`.`course` (`course_id`, `name_course`, `description_c`) VALUES ('2', 'part time', '12 tháng');


INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('1', '1', '1', '2.5');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('2', '2', '2', '3.7');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('3', '1', '3', '4.9');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('4', '1', '4', '5.0');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('5', '1', '5', '6.3');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('6', '2', '6', '7.4');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('7', '2', '7', '8.6');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('8', '2', '8', '9.8');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('9', '2', '9', '10');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('10', '1', '10', '9.2');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('11', '2', '1', '8.0');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('12', '2', '2', '6.8');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('13', '1', '3', '4.6');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('14', '2', '4', '2.4');
INSERT INTO `quan_ly_hoc_vien`.`points` (`point_id`, `course_id`, `student_id`, `point_s`) VALUES ('15', '2', '5', '1.2');

-- Tìm kiếm HV có họ Nguyen
select * from students
where full_name like 'nguyen_%';

-- Tìm kiếm HV có ten Anh
select * from students
where full_name like '%_anh';
-- Tim kiem HV có độ tuổi tư 18-15
select * from students
where age between 15 and 18;
-- Tìm kiếm HV có id là 2 hoặc 3
select * from students
where student_id like 2 or student_id like 3;

-- Thống kê số lượng học viên các lớp (count)
select count(student_id) as count_student, classes.name_class
from students
join classes on students.class_id = classes.class_id
group by classes.name_class;

-- Thống kê số lượng học viên tại các tỉnh (count)
select count(student_id) as total_student, address.address_name
from students
join address on students.address_id = address.address_id
group by address.address_name;
-- Tính điểm trung bình của các khóa học (avg)
select avg(point_s) as avg_point, course.name_course
from points
join course on points.course_id = course.course_id
group by course.name_course;