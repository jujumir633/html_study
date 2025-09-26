select sum(sal) from emp;

select sum(sal) as 급여의총합, round(AVG(SAL),2) as 급여의평균 from emp;

select DEPTNO from EMP;
select distinct DEPTNO from EMP; --중복제거


update emp set comm=null where comm=0;
select count(*),max(sal),max(comm),min(sal),min(comm) from EMP;
select count(*),max(sal),max(comm),min(sal),min(comm) from EMP where DEPTNO=10;
select count(*),max(sal),max(comm),min(sal),min(comm) from EMP where DEPTNO=30;

select stddev(sal) from EMP; --표준편차

select DEPTNO, sum(SAL), round(avg(sal)) from EMP group by DEPTNO; --group by 묶어서 각각 보여줌
select DEPTNO,
       sum(SAL) as total,
       round(avg(sal)) as AVG
       from EMP where sal>=1000
       group by DEPTNO;

select DEPTNO, sum(sal) as total from emp group by DEPTNO having sum(sal)>9000 order by total asc;






