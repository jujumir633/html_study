select *from emp;
--사원관리페이지에서 페이징되어 있음
--한 페이지당 5명씩 출력
select ROWNUM no, e.* from EMP e order by e.HIREDATE;

-- select ROWNUM no, emp.* from(select *from EMP order by HIREDATE) EMP where no between 1 and 5;
select *from (select ROWNUM no, emp.* from(select *from EMP order by HIREDATE) EMP) where no between 2 and 5;

select *from (select ROW_NUMBER() over ( order by sal) no, e.* from EMP e) where no between 11 and 15;

select *from EMP order by HIREDATE offset 5 rows fetch next 5 rows only;
