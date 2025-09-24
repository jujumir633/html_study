insert into MEMBER values ('김지형',25);

select *from MEMBER;

--Dol create 생성, alter

-- alter table MEMBER drop  column age;

update MEMBER set age=null;

alter table MEMBER modify age number(3);  --  -999~999 까지 3자리만 가능

update MEMBER set age=25 where name='김지형';
update MEMBER set age=-100 where name='이지형';

update MEMBER set age=20 where name='이지형';

alter table MEMBER add constraint age_check check ( age>=0 and age<=200);

alter table MEMBER drop constraint age_check; --제약 조건 삭제

insert into MEMBER (age) values (39);

delete from MEMBER where age=39;

-- alter table MEMBER add constraint name_not_null

alter table MEMBER modify (name not null);

insert into MEMBER values ('최경민',39);

alter table MEMBER add id number(5);

delete from MEMBER where NAME='김지형';

alter table MEMBER add constraint pk_member primary key (id);

insert into MEMBER (name,age,id) values ('김지형',25,4);

update MEMBER set age=35 where id=3;






