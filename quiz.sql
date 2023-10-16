Create database quizs;

use quizs;

create table users(
id int primary key auto_increment,
Username varchar(100) not null,
Phone bigint,
Password varchar(100) unique,
Email varchar(100) not null
);


create table quizs (
id int primary key auto_increment,
Name varchar(100) not null,
passing_Percentage bigint,
Duration datetime,
Created_at varchar(100) not null
);

create table questions(
id int primary key auto_increment,
quiz_id int,
question_type varchar(200) not null,
Marks bigint not null
);

create table attempt(
id int primary key auto_increment,
question_id int,
label varchar(100) not null,
is_it_correct boolean
);

create table assing(
id int primary key auto_increment,
User_id int,
quiz_id int, 
Date_assing datetime not null 
);

create table result (
id int primary key auto_increment,
Assing_id int,
marks_score bigint,
submission_date datetime not null
);


create table answer(
id int primary key auto_increment,
result_id int,
correct_answer boolean,
wrong_answer boolean
);

Select * from users;

Select * from quizs;

select * from questions;

Select * from attempt;

Select * from assing;

Select * from result;

Select * from answer;