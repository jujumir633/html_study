--from 서브쿼리 : 조회한 결과를 다시 조회한 대상으로 사용 paging
select *from EMP;

select *from (select *from DEPT);

select g.DEPTNO,g.급여평균 from (select DEPTNO,round(avg(sal)) 급여평균 from emp group by DEPTNO) g
where g.급여평균>2000;

select ROWNUM,EMPNO,ENAME from emp order by EMPNO; --행번호

select r.* from (select ROWNUM no ,EMPNO,ENAME from EMP order by EMPNO) r;
-- rownum 은 where절에 쓰면 순서가 뒤죽박죽 됨

select round(avg(sal)) from emp;

select *from emp where sal>2073;

select *from EMP where sal>(select avg(sal) from EMP); --where 절의 서브쿼리

select DEPTNO from EMP group by DEPTNO having avg(sal)>2000;

select *from EMP where DEPTNO in(10,20);

--select 절에 작성하는 서브쿼리 => 무조건 단일결과--
select e.ENAME,e.DEPTNO,(select avg(g.sal) from emp g where g.deptno=e.DEPTNO) from emp e;










