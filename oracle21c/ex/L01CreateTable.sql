--데이터소스
-- url : jdbc:oracle:thin:@//localhost:1521/XEPDB1
-- user : system
-- password : oracle

-- select 7*8 from dual;

create user table_user identified by "1234"
DEFAULT tablespace USERS
temporary tablespace TEMP
quota unlimited on USERS;

grant resource, connect to table_user;

create table table_user.board(
    no NUMBER,
    title nvarchar2(50),
    contents varchar2(100)
);
