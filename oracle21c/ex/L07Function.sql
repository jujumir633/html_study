select lower(ENAME) from emp;
select initcap(ENAME) from emp;
--to_char, number, cast
select substr(ENAME,0,2) from EMP;
select substr('oracle',2,3) from dual; -- 2번째 자리부터 3글자 가져옴
select length(ENAME) from EMP;
select concat(ENAME,'님') from EMP;
select ENAME || '님' from EMP;

select round(1234.567) from dual; --소수점 없이 반올림
select round(1234.567,2) from dual; --소수점 2자리 반올림
select floor(1234.567) from dual; --소수점 버림
select trunc(1234.567) from dual;
select trunc(1234.567,2) from dual; --소수점 2자리 버림
select power(2,5) from dual; --제곱 함수

select mod(10,4) from dual; --10을 4로 나눈 나머지

select 10+10 from dual;
select 10*10 from dual;
select 10/3 from dual;
-- select 10/0 from dual; 수학적오류 0으로 나누면
-- select 10===10 from dual; 비교연산 안됨
select *from EMP where sal=800;
select *from EMP where sal!=800; -- !같지않다

select sysdate from dual; -- 표준시간
select systimestamp from dual; --오라클 시간

alter session set time_zone = 'asia/seoul';
select current_date from dual; --변경된 시간
select current_timestamp from dual; --밀리초까지 표기

select add_months(current_timestamp,3)from dual; --3개월 뒤
select add_months(current_timestamp,-3)from dual; --3개월 전
select sysdate-to_date('2025-06-25') from dual;
select sysdate-date '2025-06-25' from dual;

select months_between(sysdate,'2025-06-25') from dual;
select next_day(sysdate,'금요일')from dual;
select next_day(sysdate,'일요일')from dual;


select ENAME,SAL,comm, sal+nvl(comm,0) 총급여 from EMP; --nvl

select ENAME,nvl2(comm,'yse','no')커미션유무 from EMP; --nvl2

select ENAME,DEPTNO from EMP;
select *from DEPT;

select ENAME,
       decode(DEPTNO,
       10,'자동차',
       20,'화장품',
       30,'세일즈') AS 부서이름
    from EMP;


















