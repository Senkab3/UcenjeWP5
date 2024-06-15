use master;
go
drop database if exists fotografski_studio;
go
create database fotografski_studio;
go
use fotografski_studio;

create table Djelatnik(
sifra int not null primary key identity,
ime varchar(2),
prezime varchar(2),
oib char(11)
);

create table Usluga(
sifra int not null primary key identity,
naziv varchar(4) not null,
cijena decimal (18,2),
djelatnik varchar(2)
);