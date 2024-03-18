CREATE DATABASE fgoboard default CHARACTER SET UTF8MB4;
use fgoboard;

create table servantlist(
id int,
name varchar(30),
className varchar(20),
rarity int,
face varchar(200)
);
select * from servantlist;
drop table servantlist;
select * from servantlist where className like 'archer';
select id from servantlist where className like 'saber';
select Count(*) from servantlist where className='saber';
select Count(*) from servantlist where className='archer';
select Count(*) from servantlist where rarity=2 and className = 'archer';
select Count(*) from servantlist ;
select name from servantlist where id like 100100;