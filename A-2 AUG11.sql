create database Exercise2Db
use Exercise2Db
create table Publisher
(PId int  primary key,
Publisher nvarchar(50) unique not null)
insert into Publisher (PId, Publisher) values
(1,'Dhana'),
(2,'Ram'),
(3,'Somu')
create table Category
(CID int primary key,
Category nvarchar(50) unique not null)
insert into Category (CID, Category) values
(1,'Hr'),
(2,'Accounts'),
(3,'Manager')
 create table Author
  (AID int primary key,
  Author nvarchar(50) unique not null)
  insert into Author(AID, Author) values
(3, 'Ravindra'),
(4, 'Jhon'),
(5, 'Whilson')
  create table Book
  (BID int primary key,
BName nvarchar(50) not null ,
BPrice float,
Author int foreign key(Author) references Author(AID),
Publisher int foreign key(Publisher) references Publisher(PId),
Category int foreign key(Category) references Category(CID))
insert into Book(BID, BName, BPrice, Author, Publisher, Category) values
(1, 'Telugu', 9000.00, 3,2,2),
(2, 'English', 4444.99, 3, 2, 2),
(3, 'Hindi', 1000.00, 4, 1, 1),
(4, 'Kannada', 1500.99, 4, 1, 1),
(5, 'Bengali', 2000.25, 5, 3, 3),
(6, 'Marati', 2500.00, 5, 3, 3)

select B.BID, B.BName, B.BPrice, A.Author , P.Publisher , C.Category 
from Book as B join Author as A on B.Author = A.AID join Publisher as P on B.Publisher = P.PId join Category as C on B.Category = C.CID
