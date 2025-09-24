create table student(
                        name varchar2(10),
                        age number
);
insert into student (name, age) values ('송영주',45);
insert into student (name, age) values ('범준',29);
insert into student (name, age) values ('',29);


select name, age from student;
