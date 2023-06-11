create database seminar1;
USE seminar1;
create table students (
id  int primary key auto_increment,
name varchar(15),
surname varchar(20),
email varchar(40) unique,
phone_number varchar(11) unique
);
create table teachers (
id  int primary key auto_increment,
name varchar(15) not null,
surname varchar(20) not null,
position varchar(20)
);
create table courses (
id  int primary key auto_increment,
name varchar(15) not null
);
create table courses_students (
course_id  int,
student_id int,
foreign key (course_id) references courses (id),
foreign key (student_id) references students (id)
);
create table courses_teachers (
course_id  int,
teacher_id int,
foreign key (course_id) references courses (id),
foreign key (teacher_id) references teachers (id)
);