select *from emp;
select *from DEPT;

select ENAME,EMP.DEPTNO,DNAME,loc from EMP,dept where emp.DEPTno=dept.DEPTNO order by ENAME;

select *from PAY_HISTORY;

select PAY_ID, PAY_HISTORY.empno,emp.empno,ENAME,AMOUNT,BONUS from PAY_HISTORY,emp
where PAY_HISTORY.EMPNO=emp.EMPNO order by PAY_ID;

--가명 AS
select ENAME as 사원이름 from EMP;
select ENAME 사원이름 from EMP;
select e.ename, e.empno 사원이름 from EMP e;

select *from emp e inner join dept d on e.DEPTNO=d.DEPTNO;
-- emp=e , dept=d 약자로 가능

select distinct DEPTNO from EMP;

select *from dept;

select *from emp where DEPTNO is null;

update emp set DEPTNO=null where EMPNO in(7698,7782,7788);

select count(*) from EMP;

select *from emp e inner join DEPT d on e.DEPTNO=d.DEPTNO;

select *from emp e left outer join DEPT d on e.DEPTNO=d.DEPTNO;

select *from emp e right outer join DEPT d on e.DEPTNO=d.DEPTNO;

select *from emp e full outer join DEPT d on e.DEPTNO=d.DEPTNO;

--inner join == natual join : 자동으로 on의 조건을 생성
--  pk == fk 이름이 같아야 함(키값은 원본자료에서 넣어준값)

select *from emp natural join dept;

select e.EMPNO,e.ENAME,e.mgr,m.ENAME,m.EMPNO from emp e, emp m where e.MGR=m.EMPNO;

select m.ENAME as 상사,e.ename as 부하 from emp e inner join emp m on e.mgr=m.EMPNO;

--select 안에 (select) 를 서브쿼리











