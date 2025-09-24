--데이터소스
-- url : jdbc:oracle:thin:@//localhost:1521/XEPDB1
-- user : table_user
-- password : 1234



-- create table table_user.board(
--     no NUMBER,
--     title nvarchar2(50),
--     contents varchar2(100)
-- );

create table member(
    name varchar2(10),
    age number
);
insert into member (name, age) values ('이지형',20);
insert into member (name, age) values ('김지형',25);

select name, age from member;



