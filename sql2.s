create database Kitabxana 
use kitabxana
create table Authors
(
Id int  identity(1,1) primary key,
 Name nvarchar(30),
Surname nvarchar(30)
)
create table Books
(
Id int identity(1,1) primary key,
Name nvarchar(30),
AuthorId int constraint b_books foreign key references Authors(Id),
PageCount int
)

insert into Authors
values
('azad','huseynov'),
('memmed','hesenov'),
('qember','memmedov')
insert into Books(name,AuthorId,PageCount )
values
('birinci addim',2,32),
('14 cu adam',1,100),
('yuxularin cin oldugu yerde',3,150)
create view adrbks
as
select Id, name from Authors
union all
select Id, name from Books
select*from Books
join Authors on Books.AuthorId=Authors.Id
select*from adrbks
