create user usersong identified by "1234"
    DEFAULT tablespace USERS
    temporary tablespace TEMP
    quota unlimited on USERS;

grant resource, connect to usersong;

create table usersong.board(
                                 no NUMBER,
                                 title nvarchar2(50),
                                 contents varchar2(100)
);


