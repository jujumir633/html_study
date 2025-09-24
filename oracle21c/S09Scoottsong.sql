-- 1. EMP 테이블에서 모든 사원의 정보를 조회하시오.
select *from SCOTT.emp;

-- 2. EMP 테이블에서 사원 이름(ENAME)과 급여(SAL)만 조회하시오.
select ENAME, sal from SCOTT.EMP;

-- 3. EMP 테이블에서 부서 번호(DEPTNO)가 10인 사원의 이름과 직무를 조회하시오.
select DEPTNO,ENAME,JOB from SCOTT.emp where DEPTNO=10;

-- 4. EMP 테이블에서 급여가 2000 이상인 사원의 이름과 급여를 조회하시오.
select SAL, ENAME from SCOTT.EMP where SAL>=2000;

-- 5. EMP 테이블에서 직무(JOB)가 'CLERK'인 사원의 모든 정보를 조회하시오.
select *from SCOTT.EMP where JOB='CLERK';

-- 6. EMP 테이블에서 이름이 'S'로 시작하는 사원의 이름과 부서 번호를 조회하시오. (LIKE 'S%')
select ENAME,DEPTNO from SCOTT.EMP where ENAME like 'S%';

-- 7. EMP 테이블에서 이름이 'T'로 끝나는 사원의 이름과 직무를 조회하시오. (LIKE '%T')
select ENAME,JOB from SCOTT.EMP where ENAME like '%T'

-- 8. EMP 테이블에서 커미션(COMM)이 NULL인 사원의 이름과 급여를 조회하시오. (IS NULL)
select COMM,ENAME,SAL from SCOTT.EMP where comm IS null or COMM=0;

-- 9. EMP 테이블에서 매니저(MGR)가 없는 사원의 이름과 직무를 조회하시오. (MGR IS NULL)
select mgr,ENAME,JOB from SCOTT.EMP where MGR is null or MGR=0;

-- 10. EMP 테이블에서 급여(SAL)가 1500 이상 3000 이하인 사원의 이름과 급여를 조회하시오. (BETWEEN 사용 가능)
select SAL,ENAME from SCOTT.EMP where sal>=1500 or sal<=3000 order by SAL;

-- 11. EMP 테이블에서 1981년에 입사한(HIREDATE) 사원의 이름과 입사일을 조회하시오. (연도 조건)
select HIREDATE,ENAME from SCOTT.EMP where HIREDATE between date '1981-01-01' and date '1981-12-31'

-- 12. DEPT 테이블에서 모든 부서의 이름(DNAME)과 지역(LOC)을 조회하시오.
select DNAME,loc from SCOTT.DEPT;

-- 13. EMP 테이블에서 부서 번호가 20번 또는 30번인 사원의 이름과 부서 번호를 조회하시오. (IN (20,30))
select DEPTNO,ENAME from SCOTT.EMP where DEPTNO=20 or DEPTNO=30;

-- 13. EMP 테이블에서 부서 번호가 20번 또는 30번인 사원의 이름과 부서 번호를 조회하시오. (IN (20,30))
select DEPTNO,ENAME from SCOTT.EMP where DEPTNO in(20,30);

-- 14. EMP 테이블에서 보너스(COMM)가 0보다 큰 사원의 이름, 급여, 보너스를 조회하시오. (COMM > 0)
select comm,ENAME,SAL from SCOTT.EMP where comm>0;

-- 15. EMP 테이블에서 직무(JOB)가 'MANAGER'인 사원의 이름, 부서 번호, 입사일을 조회하시오.
select JOB,ENAME,DEPTNO,HIREDATE from SCOTT.EMP where JOB='MANAGER';



