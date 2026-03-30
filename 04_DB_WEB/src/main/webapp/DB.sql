create table restaurant_test
(
    r_no    number(3) primary key,
    r_name  varchar2(20 char)  not null,
    r_place varchar2(30 char)  not null,
    r_img   varchar2(200 char) not null
);

create sequence retaurent_test_seq;

insert into restaurant_test
values (retaurent_test_seq.nextval, 'res01', 'jongro', 'a.jpg');
insert into restaurant_test
values (retaurent_test_seq.nextval, 'res02', 'jongro2ga', 'aa.jpg');
insert into restaurant_test
values (retaurent_test_seq.nextval, 'res03', 'jongro3ga', 'aaa.jpg');

select *
from restaurant_test;


