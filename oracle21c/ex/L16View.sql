select *from EMP where sal>=2000;
create view emp_2000_sal as select *from EMP where sal>=2000; --view 등록

select *from emp_2000_sal; -- 등록된 view 불러옴

select *from emp left join DEPT on emp.DEPTNO=DEPT.DEPTNO;

drop view emp_2000_sal; --저장된 view 삭제