CREATE TABLE Trainer_Info (
  Trainer_Id varchar2(20) primary key,
  Salutation varchar2(7),
  Trainer_Name varchar2(30),
  Trainer_Location varchar2(30),
  Trainer_Track varchar2(15),
  Trainer_Qualification varchar2(100),
  Trainer_Experiance integer(11),
  Trainer_Email varchar2 (100),
  Trainer_Password varchar2 (20)
);

create table Batch_Info(
  Batch_Id	varchar2(20) primary key,
  Batch_Owner	varchar2(30),
  Batch_BU_Name	varchar2(30)
);

create table Module_Info(
  Module_Id	varchar2(20) primary key,
  Module_Name	varchar2(40),
  Module_Duration	Integer(11)
);

create table Associate_Info(
  Associate_Id	varchar2(20) primary key,
  Salutation	varchar2(7),
  Associate_Name varchar2(30),
  Associate_Location	varchar2(30),
  Associate_Track	varchar2(15),
  Associate_Qualification	varchar2(200),
  Associate_Email	varchar2(100),
  Associate_Password varchar2(20)
);
 
create table Questions(
  Question_Id	varchar2(20) primary key,
  Module_Id	varchar2(20),
  Question_Text	varchar2(900)
);

create table Associate_Status(
  Associate_Id varchar2(20) ,
  Module_Id	varchar2(20),
  Batch_Id varchar2(20),
  Trainer_Id varchar2(20),
  Start_Date	varchar2(20),
  End_Date	varchar2(20)
 
);

create table Trainer_Feedback(
  Trainer_Id	varchar2(20) primary key,
  Question_Id	varchar2(20),
  Batch_Id varchar2(20),
  Module_Id	varchar2(20),
  Trainer_Rating Integer(11)
);

create table Associate_Feedback (
  Associate_Id varchar2(20) primary key,
  Question_Id	varchar2(20),
  Module_Id	varchar2(20),
  Associate_Rating Integer(11)
);

create table Login_Details(
  User_Id	varchar2(20) primary key,
  User_Password	varchar2(20)
);