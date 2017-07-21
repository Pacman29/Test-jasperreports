/*DROP TABLE IF EXISTS Laptop;
DROP TABLE IF EXISTS PC;
DROP TABLE IF EXISTS Printer;
DROP TABLE IF EXISTS Product;*/

CREATE TABLE IF NOT EXISTS Product (
  maker varchar (10) NOT NULL ,
  model varchar (50) PRIMARY KEY NOT NULL ,
  type varchar (50) NOT NULL
)
;

CREATE TABLE IF NOT EXISTS Laptop (
  code SERIAL PRIMARY KEY NOT NULL ,
  model varchar (50) NOT NULL REFERENCES Product (model) ON DELETE CASCADE ON UPDATE CASCADE,
  speed smallint NOT NULL ,
  ram smallint NOT NULL ,
  hd real NOT NULL ,
  price decimal(12,2) NULL ,
  screen smallint NOT NULL
)
;

CREATE TABLE IF NOT EXISTS PC (
  code SERIAL PRIMARY KEY NOT NULL ,
  model varchar (50) NOT NULL REFERENCES Product (model) ON DELETE CASCADE ON UPDATE CASCADE,
  speed smallint NOT NULL ,
  ram smallint NOT NULL ,
  hd real NOT NULL ,
  cd varchar (10) NOT NULL ,
  price decimal(12,2) NULL
)
;

CREATE TABLE IF NOT EXISTS Printer (
  code SERIAL PRIMARY KEY NOT NULL ,
  model varchar (50) NOT NULL REFERENCES Product (model) ON DELETE CASCADE ON UPDATE CASCADE,
  color char (1) NOT NULL ,
  type varchar (10) NOT NULL ,
  price decimal(12,2) NULL
)
;

----Product------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Product values('B','1121','PC') ON CONFLICT DO NOTHING ;
insert into Product values('A','1232','PC') ON CONFLICT DO NOTHING ;
insert into Product values('A','1233','PC') ON CONFLICT DO NOTHING ;
insert into Product values('E','1260','PC') ON CONFLICT DO NOTHING ;
insert into Product values('A','1276','Printer') ON CONFLICT DO NOTHING ;
insert into Product values('D','1288','Printer') ON CONFLICT DO NOTHING ;
insert into Product values('A','1298','Laptop') ON CONFLICT DO NOTHING ;
insert into Product values('C','1321','Laptop') ON CONFLICT DO NOTHING ;
insert into Product values('A','1401','Printer') ON CONFLICT DO NOTHING  ;
insert into Product values('A','1408','Printer') ON CONFLICT DO NOTHING ;
insert into Product values('D','1433','Printer') ON CONFLICT DO NOTHING ;
insert into Product values('E','1434','Printer') ON CONFLICT DO NOTHING ;
insert into Product values('B','1750','Laptop') ON CONFLICT DO NOTHING ;
insert into Product values('A','1752','Laptop') ON CONFLICT DO NOTHING ;
insert into Product values('E','2113','PC') ON CONFLICT DO NOTHING ;
insert into Product values('E','2112','PC') ON CONFLICT DO NOTHING ;

----PC------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into PC values(1,'1232',500,64,5,'12x','600') ON CONFLICT DO NOTHING ;
insert into PC values(2,'1121',750,128,14,'40x','850') ON CONFLICT DO NOTHING ;
insert into PC values(3,'1233',500,64,5,'12x','600') ON CONFLICT DO NOTHING ;
insert into PC values(4,'1121',600,128,14,'40x','850') ON CONFLICT DO NOTHING ;
insert into PC values(5,'1121',600,128,8,'40x','850') ON CONFLICT DO NOTHING ;
insert into PC values(6,'1233',750,128,20,'50x','950') ON CONFLICT DO NOTHING ;
insert into PC values(7,'1232',500,32,10,'12x','400') ON CONFLICT DO NOTHING ;
insert into PC values(8,'1232',450,64,8,'24x','350') ON CONFLICT DO NOTHING ;
insert into PC values(9,'1232',450,32,10,'24x','350') ON CONFLICT DO NOTHING ;
insert into PC values(10,'1260',500,32,10,'12x','350') ON CONFLICT DO NOTHING ;
insert into PC values(11,'1233',900,128,40,'40x','980') ON CONFLICT DO NOTHING ;
insert into PC values(12,'1233',800,128,20,'50x','970') ON CONFLICT DO NOTHING ;


----Laptop------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Laptop values(1,'1298',350,32,4,'700',11) ON CONFLICT DO NOTHING ;
insert into Laptop values(2,'1321',500,64,8,'970',12) ON CONFLICT DO NOTHING ;
insert into Laptop values(3,'1750',750,128,12,'1200',14) ON CONFLICT DO NOTHING ;
insert into Laptop values(4,'1298',600,64,10,'1050',15) ON CONFLICT DO NOTHING ;
insert into Laptop values(5,'1752',750,128,10,'1150',14) ON CONFLICT DO NOTHING ;
insert into Laptop values(6,'1298',450,64,10,'950',12) ON CONFLICT DO NOTHING ;


----Printer------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Printer values(1,'1276','n','Laser','400') ON CONFLICT DO NOTHING ;
insert into Printer values(2,'1433','y','Jet','270') ON CONFLICT DO NOTHING ;
insert into Printer values(3,'1434','y','Jet','290') ON CONFLICT DO NOTHING ;
insert into Printer values(4,'1401','n','Matrix','150') ON CONFLICT DO NOTHING ;
insert into Printer values(5,'1408','n','Matrix','270') ON CONFLICT DO NOTHING ;
insert into Printer values(6,'1288','n','Laser','400') ON CONFLICT DO NOTHING ;