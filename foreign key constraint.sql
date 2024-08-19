create table mycustomers(
cid int primary key,
cname char (15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int  UNIQUE,
city char(15)
);
create table myaccounts(
mycid int,
accno int primary key,
atype char(15) NOT NULL UNIQUE,
branch char(15) NOT NULL,
bal double,
foreign key(mycid) references mycustomers(cid)
);
create table mytransactions(
myaccno int,
txnumber int primary key,
txdate date not null,
amount double,
txtype char(2),
foreign key(myaccno) references myaccounts(accno)
);
