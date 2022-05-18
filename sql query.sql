create table clients(
id int identity(1,1) not null primary key,
name varchar(50),
address varchar(50),
contactno varchar(50),
email varchar(50),
password varchar(50)
unique (email),
unique (contactno)
);

insert into clients(name,address,contactno,email,password)
values('Abhishek','Sec 14',8890956464,'abhi@gmail.com',3395),
('Lucky','Sec 13',9829880119,'lucky@gmail.com',4899);

create table orders(
pid int identity(1,1) not null primary key,
orderno varchar(50),
orderdate varchar(50),
unique (orderno),
id int Foreign Key References client(id) 
);
