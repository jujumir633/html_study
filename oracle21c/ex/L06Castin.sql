select sysdate from dual;
select to_char(sysdate) from dual;
select to_char(sysdate,'HH24/MI/SS') from dual;
select to_char(sysdate,'HH24"시" MI"분" SS"초"') from dual;

select to_number('12345')*3 from dual;
select '12345'*3 from dual; --자동형변환 되어 계산됨, 하지만 파싱이 어려우면 힘듬

select to_number('12,345','99G999')*3 from dual;

-- select sal+'$' from emp; 오류
select sal||'$' from emp;
-- select ENAME+'님' from EMP;  문자 더하기 오류
select ENAME || '님' from EMP;
select concat(ENAME,'님') from EMP;
select to_char(sal,'999,999,999.00') from EMP;

alter session set time_zone = 'Asia/Seoul';
select sessiontimezone from dual; -- 국제 표준시간
select systimestamp at time zone 'asia/seoul' from dual; --서울시간 확인
select sysdate from dual;
select current_timestamp from dual;

select cast('1234' as number) from dual; --조회할때만 변환
-- update , alter 는 테이블 데이터 변경









