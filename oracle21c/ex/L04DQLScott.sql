select *from emp;

select *from DEPT;

select DNAME as "부서 이름" from DEPT where DEPTNO=20;

select DNAME as "부서 이름" from DEPT where DEPTNO>=30;

select DNAME from DEPT where DEPTNO=20;

select ename,SAL from emp order by sal desc;  --order by는 항상 맨뒤에 씀 정렬함

select ename,SAL from emp where sal>=1000 and sal<2000 order by sal desc;

select ename,SAL from emp where sal between 1000 and 2000 order by sal;
select ename,SAL from emp where sal=2000;  --2000달러 월급 있나 조회
select *from emp where ENAME='allen';
update emp set sal=2000 where empno=7499;


select ENAME, HIREDATE from EMP;

select ENAME, HIREDATE from EMP where HIREDATE>'1981-09-01';  --거의 대부분의 DB는 날짜를 문자열로 조회 가능(자동파싱)

select ENAME, HIREDATE from EMP where HIREDATE='1987-07-13';
select ENAME, HIREDATE from EMP where HIREDATE='1987-7-13';
select ENAME, HIREDATE from EMP where HIREDATE>='1981-09-01' and HIREDATE<'1981-10-01';
select ENAME, HIREDATE from EMP where HIREDATE='1981-09';  --오라클 지원 안됨 mysql 지원함

--between a and b
select ENAME, HIREDATE from emp where HIREDATE between date '1981-09-01' and '1981-09-30';

select *from emp where ename='tu';
select *from emp where ename like 'tu%';

