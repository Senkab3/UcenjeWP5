use master;
go
drop database if exists fotografski_studio;
go
create database fotografski_studio;
go
use fotografski_studio;

create table Djelatnici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);

create table Usluge(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal (18,2) not null,
djelatnik int not null
);


alter table Usluge add foreign key (djelatnik) references djelatnici(sifra);
 1 - 3 
insert into Djelatnici(ime, prezime) values 
('Olivera','Banjac'),
('Marina','Petrovic'),
('Valerija','Bisof');

insert into usluge (naziv, cijena) values
('Obiteljska fotografija',10,1),
('Portret',12,1),
('Figura',15,2);

