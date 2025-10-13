select *from EMP;
select EMPNO,ENAME,sal,avg(sal) over () from EMP;
select EMPNO,ENAME,sal from EMP;
select EMPNO,ENAME,sal,평균 from EMP,(select avg(sal)평균 from EMP);

select avg(sal) from EMP;

select EMPNO,ENAME,sal,평균 from EMP,(select DEPTNO,avg(sal)평균 from EMP group by DEPTNO) order by EMPNO;

select dense_rank() over (order by sal desc), e.sal,e.ename from EMP e;

