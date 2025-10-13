select *from EMP;

select *from  emp order by HIREDATE desc;

select ROWNUM as no ,emp.*from EMP order by HIREDATE desc; --뒤죽박죽됨
select *from EMP order by HIREDATE desc; --이걸 가상절로 만듬 아래처럼
select ROWNUM no ,e.* from (select *from EMP order by HIREDATE desc) e; --rownum 앞에 쓰로 통으로 위에걸 넣음
select ROWNUM no ,e.* from (select *from EMP order by HIREDATE desc) e where no between 5 and 10;
--where절 이후 rownum 실행되어 안됨
--where절에서 rownum 함수 자체를 호출하면 select rownum 과 동시에 실행
select ROWNUM no,e.* from(select *from emp order by HIREDATE desc)e where ROWNUM <=10; --편법으로 동작
select *from (select ROWNUM as no ,e.* from (select *from emp order by HIREDATE desc )e)where no between 6 and 10;

--급여의 평균보다 급여를 많이 받는 사람
--max, min , avg

select avg(sal) from EMP;
select *from emp where sal>(select avg(sal) from EMP); -- 서브쿼리 위에서 고대로 넣음

select *from emp;
select *from (select *from emp);

-- select ROWNUM no, emp.*from emp where no between 5 and 10; 이거 안됨
select *from (select ROWNUM no, emp.*from emp)where no between 5 and 10; --이건 됨
select *from (select ROWNUM no, EMP.* from emp) where no between 5 and 10; -- emp.* 이건 머야?????

select ROWNUM, emp.*from emp order by sal desc;

select ROWNUM, e.*from(select *from EMP order by sal desc)e where ROWNUM <=10;
select *from(select ROWNUM no, e.*from(select *from EMP order by sal desc)e)where no between 5 and 10; --rownum 으로 받으면 안됨

select PAY_HISTORY.*,avg(AMOUNT) over(order by AMOUNT desc) from PAY_HISTORY;

