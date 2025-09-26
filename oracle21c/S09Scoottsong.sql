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
select ENAME,JOB from SCOTT.EMP where ENAME like '%T';

-- 8. EMP 테이블에서 커미션(COMM)이 NULL인 사원의 이름과 급여를 조회하시오. (IS NULL)
select COMM,ENAME,SAL from SCOTT.EMP where comm IS null or COMM=0;
select COMM,ENAME,SAL from SCOTT.EMP where comm IS not null;


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


--------------------------------- S10 예전 문제---------------------------------
-- 'oracle database' 문자열을 모두 대문자로 바꾸어 출력하라.

-- 'SCOTT' 문자열을 소문자로 바꾸어 출력하라.
    select lower('SCOTT') from dual;
-- 'hello world'의 각 단어 첫 글자만 대문자로 바꾸어 출력하라.
    select initcap('hello world') from dual;
-- 'ORACLE' 문자열에서 두 번째 위치부터 세 글자를 잘라내어 출력하라.
    select substr('oracle',2,3) from dual;
-- 'DATABASE' 문자열의 길이를 구하라.
    select length('DATABASE') from dual;
-- 숫자 123.4567을 소수 둘째 자리에서 반올림한 결과를 출력하라.
    select round(123.4567,2) from dual;
-- 숫자 123.4567을 소수 둘째 자리에서 버림한 결과를 출력하라.
    select trunc(123.4567,2) from dual;
-- 10을 3으로 나눈 나머지를 출력하라.
    select mod(10,3) from dual;
-- 2의 5제곱 값을 출력하라.
    select power(2,5) from dual;
-- 현재 날짜와 시간을 출력하라.
    select current_timestamp from dual;
-- 현재 날짜에서 2개월 뒤의 날짜를 출력하라.
    select add_months(sysdate,2) from dual;
-- 2025-01-01과 오늘 날짜 사이의 개월 차이를 출력하라.
    select months_between('2025-09-25','2025-01-01') from dual;
-- 오늘 날짜 이후의 가장 가까운 금요일 날짜를 출력하라.
    select next_day('2025-0925','금요일') from dual;
-- 오늘 날짜를 'YYYY/MM/DD' 형식의 문자열로 바꾸어 출력하라.
    select to_char(sysdate,'YYYY-MM-DD') from dual;
-- -- 문자열 '2025-12-31'을 날짜 데이터로 변환하라.
    select to_date('2025-12-31','YYYY-MM-DD') from dual;
-- 문자열 '10000'을 숫자로 변환하라.
    select to_number('10000') from dual;
-- 사원의 커미션(comm)이 NULL이면 0을, NULL이 아니면 커미션 값을 출력하라.
    select ENAME,nvl(COMM,0) from EMP;

-- 사원의 커미션(comm)이 NULL이면 'NO', NULL이 아니면 'YES'를 출력하라.
    select ENAME, nvl2(comm,'no','yes') from EMP;
-- 사원의 부서 번호(deptno)가 10이면 'ACCOUNTING', 20이면 'RESEARCH', 그 외에는 'OTHERS'로 출력하라.
    select ENAME, decode(DEPTNO,10,'ACCOUNTING',20,'RESEARCH',30,'OTHERS') from EMP;
-- 사원의 급여(sal)가 3000 이상이면 'HIGH', 그렇지 않으면 'LOW'로 출력하라.
    select ENAME,SAL , case when sal>=3000 then 'high' else 'low' end from EMP;

------------------------S11 예제 문제------------------------------------------
--1 부서(deptno)별 인원수를 구하라. 컬럼명은 인원수로 표시하라.
    select DEPTNO,count(*) from  EMP group by DEPTNO;

--2 부서(deptno)별 급여(sal) 합계를 구하고 합계가 큰 순으로 정렬하라. 컬럼명은 총급여로 하라.
    select DEPTNO,sum(SAL) from EMP group by DEPTNO order by sum(sal) desc;

--3 직무(job)별 평균 급여를 소수점 둘째 자리까지 반올림하여 구하라. 컬럼명은 평균급여로 하라.
    select JOB,round(Avg(sal),2) as 평균급여 from EMP group by JOB;

--4 부서(deptno)별 최댓값/최솟값 급여를 함께 구하라. 컬럼명은 각각 최고급여, 최저급여로 하라.
    select DEPTNO, max(sal) as 최고급여, min(sal) as 최저급여 from EMP group by DEPTNO;

--5 부서(deptno)와 직무(job)별 인원수를 구하라. 인원수가 3명 이상인 그룹만 출력하라.
    select DEPTNO,JOB,count(*) as 인원수 from EMP group by DEPTNO,JOB having count(*)>=3;

--6 부서(deptno)별로 중복을 제거한 직무(job) 개수를 구하라. 컬럼명은 직무개수로 하라.
    select DEPTNO, count(distinct job) as 직무개수 from EMP group by DEPTNO;
    select DEPTNO, count(*) from EMP group by DEPTNO;

--7 보너스(comm)가 NULL이 아닌 사원만 대상으로, 직무(job)별 평균 보너스를 구하라.
    select job, avg(COMM) as 평균보너스 from EMP where comm is not null group by job;

--8 부서(deptno)별 급여 합계가 10000 이상인 부서만 출력하라. 합계 컬럼명은 총급여로 하라.
    select DEPTNO,sum(SAL) as 총급여 from EMP  group by DEPTNO having sum(sal)>=10000

--9 입사일(hiredate)을 월 단위(YYYY-MM)로 묶어 월별 입사 인원수를 구하고 최신 월이 먼저 오도록 정렬하라.
    select to_char(HIREDATE,'YYYY-MM') as 입사월,count(*) as 인원수 from EMP group by HIREDATE;

--10 직무(job)별로 급여 평균이 2500 이상인 그룹만 출력하고, 평균은 소수점 한 자리까지 표시하라.
    select job,round(AVg(sal),1) as 급여평균 from EMP group by job having avg(sal)>=2500;

--11 부서(deptno)별로 급여가 3000 이상인 사원 수와 3000 미만인 사원 수를 각각 구해 한 행에 보여라.
    select DEPTNO,sum(case when sal>=3000 then 1 end) as "3000이상",sum(case when sal<3000 then 1 end ) as "3000이하" from EMP group by DEPTNO;

--12 부서(deptno)별로 사원들의 고유 급여(sal, 중복 제거)의 평균을 구하라. 컬럼명은 고유평균급여로 하라.
    select DEPTNO, round(avg(distinct sal)) as 고유평균급여 from EMP group by DEPTNO;

--13 직무(job)별로 급여의 표준편차와 분산을 구하라. 컬럼명은 각각 표준편차, 분산으로 하라.
    select job, round(stddev(sal)) as 표준편차, round(variance(sal)) as 분산 from EMP group by job;

--14 부서(deptno)별로 사원 수가 가장 많은 직무(job)만 출력하라. 동률이면 모두 출력하라.****************


--15 직무(job)별로 보너스(comm)를 받는 사원 비율(보너스 있는 인원 / 전체 인원 × 100)을 소수점 둘째 자리까지 구하라.


--16 부서(deptno)별 급여 중앙값을 구하라. 컬럼명은 중앙값으로 하라.
--17 부서(deptno)별, 직무(job)별로 급여 합계를 구하고, 부서 내에서 합계가 큰 순으로 정렬하라.
--18 부서(deptno)별 급여 합계와 평균을 구하되, 부서 번호가 10 또는 20인 경우만 출력하라.
--19 전체 사원을 하나의 그룹으로 보고, 전체 인원수, 서로 다른 직무 수, 급여 평균을 한 행에 출력하라.
--20 부서(deptno)별로 급여 평균이 각 부서의 최대 급여의 60% 이상인 부서만 출력하라.


-- ------------------------S12Order 예제---------------------------------------
--1 사원 이름(ename)을 오름차순으로 정렬하여 출력하라.
    select ENAME from EMP order by ENAME asc;

--2 급여(sal)를 내림차순으로 정렬하여 출력하라.
    select sal from EMP order by sal desc;

--3 입사일(hiredate)을 오름차순으로 정렬하여 가장 먼저 입사한 사원이 위에 오도록 하라.
    select HIREDATE,ENAME from EMP order by HIREDATE;

--4 부서번호(deptno)를 오름차순으로 정렬하고, 같은 부서에서는 급여(sal)를 내림차순으로 정렬하라.
    select ENAME,DEPTNO, SAL from EMP order by DEPTNO desc, sal asc;

--5 직무(job)를 오름차순으로 정렬하고, 같은 직무에서는 이름(ename)을 오름차순으로 정렬하라.
    select JOB,ENAME from EMP order by job asc , ENAME asc;

--6 급여(sal)를 기준으로 정렬하되, 같은 급여인 경우 입사일(hiredate)이 빠른 순으로 정렬하라.
    select sal, HIREDATE from EMP order by sal asc, HIREDATE asc;

--7 SELECT 절의 두 번째 컬럼(sal)을 기준으로 내림차순 정렬하라.


--8 사원 이름(ename)을 대문자로 변환한 결과를 기준으로 오름차순 정렬하라.
--9 보너스(comm)를 오름차순 정렬하되, NULL 값이 있는 경우 항상 마지막에 오도록 하라.
--10 부서번호(deptno)를 내림차순으로 정렬하고, 같은 부서 내에서는 직무(job)를 오름차순으로 정렬하라.

