
-- 2023.04.11.
-- select.

-- 로그인 한 사용자가 소유하고 있는 테이블의 정보.
select * from tab;


-- 테이블 정보 확인.
desc emp;
desc dept;


-- 데이터 추출하는 질의어 : select.
-- select 컬럼이름, 컬럼이름, 컬럼이름, ... from 뒤쪽 테이블이름(VIEW도 사용가능);
-- selcet * from 테이블이름;
select * from dept;
SELECT * FROM DEPT;


-- 특정 컬럼의 데이터만 검색.
select dname, deptno, loc     -- 속성은 순서에 상관이 없음.
from dept 
;


-- select 구문의 프리젠테이션 영역에 컬럼테이블이 가지고 있는 컬럼 뿐 아니라 연산(함수)의 결과를 새로운 컬럼으로 출력할 수 있다.
select sal, sal+100, sal-100, sal*10, sal/2 from emp;     -- 연산의 결과가 데이터로 추출.
select sal from emp;
select sal + 100 from emp;
select sal - 100 from emp;
select sal * 10 from emp;
select sal / 2 from emp;

-- 사원테이블에서 사원의 이름과 급여, 연봉계산 결과를 출력해보자.
-- 연봉의 계산은 급여*12. +상여금500.
select ename, sal, sal*12+500  
from emp;


-- 상여금 계산 => sal*12+comm
select sal, sal*12+comm from emp;     -- null의 연산은 null이 나온다.
select sal, comm, nvl(comm, 0), sal*12+nvl(comm, 0) from emp;     -- nvl을 사용해야 제대로 연산.


-- 컬럼의 이름에 별칭 부여.
-- 컬럼 뒤에 as 키워드를 쓰고 별칭을 작성.
select sal, comm, nvl(comm, 0) as comm1, sal*12+nvl(comm, 0) as yearsal from emp;


-- 문자열의 연산.  문자열을 붙여준다 => 문자열 || 문자열.
select ename || ' is a ' || job
from emp;


-- select [distinct] from ...
-- => 중복값을 제거하고 값을 하나만 출력.
select deptno from emp;
select distinct deptno from emp;
select job from emp;
select distinct job from emp;


-- 원하는 행 검색.
-- where 절을 사용.
-- select ... from ... where 조건식;  -- 순서 바뀌면 절대 안된다.
-- 급여가 3000 이상인 사원의 정보리스트.
select * from emp where sal >= 3000;


-- = : 컬럼의 데이터 를  같다 비교.
-- 10번 부서에 소속된 사원들의 정보를 출력.
select ename, job --*
from emp
where deptno=10
;

-- 문자 데이터 조회.
-- 다음은 이름이 FORD인 사원의 사원번호(EMPNO)과 사원이름(ENAME)과 급여(SAL)을 출력.
-- 문자열 비교 => 작은 따옴표 사용.
select empno, ename, sal
from emp
where ename='FORD'     -- 'FORD' 대문자가 아닌 'ford' 소문자로 하면 알수없음. ->' ' 안은 무조건 대문자 사용.
;

-- 날짜 데이터 조회.
-- 날짜를 비교할 때도 작은 따옴표를 사용.
select *
from emp
where hiredate='81/12/03'     -- 날짜는 ' '(작은따옴표) 안에 대소문자 상관없음.
;

select *
from emp
where hiredate<'81/12/03'
;


-- 논리연산자 : AND, OR, NOT.
-- 10번부서의 매니저가 누구인지 찾아보자.
-- AND.
select * from emp where deptno=10 and job='MANAGER';     -- AND는 두 가지 조건을 모두 만족해야만 검색.
-- OR.
select * from emp where deptno=10 or job='MANAGER';     -- OR는 조건 중에서 한 가지만 만족하더라도 검색.
select * from emp where deptno=10 or job<>'MANAGER';    -- NOT, <>, !=.
select * from emp where deptno=20 or deptno=30 or deptno=40;     -- or, or,... 너무 길어. => NOT사용.
select * from emp where not deptno=10;     -- NOT은 조건에 만족하지 못하는 것만 검색.
select * from emp where deptno <> 10;     -- <>는 숫자뿐만 아니라 문자열까지.
select * from emp where  deptno != 10;

select * from dept;


-- BETWEEN AND 연산자.
-- 2000에서 3000 사이의 급여를 받는 사원.
select * from emp where sal>=2000 and sal<=3000;
-- 범위 연산자 between A and B => A 이상 B 이하.
select * from emp where sal between 2000 and 3000;     -- 둘 다 구하는 값이 같다.

-- 범위 연산자의 연산은 날짜도 가능 : 날짜는 작은따옴표로 정의.
-- 1987년에 입사한 사원 -> 1987/01/01 ~ 1987/12/31 -> '87/01/01' ~ '87/12/31'.
select * from emp where hiredate between '87/01/01' and '87/12/31';
select * from emp where hiredate between '80/01/01' and '81/12/31';
-- not 붙이면 범위의 반전. 
select * from emp where hiredate not between '80/01/01' and '81/12/31';


-- OR연산자, IN연산자.
-- 10번, 20번, 30번 부서에 소속된 사원의 정보를 출력.
select * from emp where deptno=10 or deptno=20 or deptno=30;
-- in(값,값,...)연산자 : or의 연산을 간단하게 처리.
-- 컬럼=값1 or 컬럼=값2 or 컬럼=값3 or ...
select * from emp where deptno in(10, 20, 30);

select * from emp where deptno not in(10, 20);


-- LIKE 연산자와 와일드카드.
-- 패턴검색 : 문자열의 패턴 -> 
-- 컬럼 LIKE'패턴'
-- 패턴형식 : % -> 0개 이상~, '%JAVA%' => JAVA 문자열은 포함하는 문자열. 
-- _ 한자리 __ 두자리 ___세자리 => __ A 앞 두자리는 어떤 문자가 와도 상관없고 A로 끝나는 세자리 문자열.
-- F로 시작하는 이름의 사원리스트 빼기.
select * from emp where ename like 'F%';
select * from emp where ename like 'O%';
select * from emp where ename like 'S%';

-- 이름에 A 를 포함하는 사원 리스트 : '%A%' '%java%' 
select * from emp where ename like '%A%';

-- 이름에 A 를 포함하지 않는 사원 리스트 : '%A%' '%java%' 
select * from emp where ename not like '%A%';


-- 이름에 N으로 끝나는 사원의 리스트 : '%N' '%.pdf'.
select * from emp where ename like '%N';


-- 사원 이름 중 두번째 문자가 A인 사원 리스트. 
select * from emp where ename like '_A%';
-- 3번째 문자가 R인 사원 리스트.
select * from emp where ename like '__R%';
-- 끝에서 2번째 문자가 R인 사원 리스트.
select * from emp where ename like '%R_';


-- IS NULL과 IS NOT NULL.
-- NULL 여부를 판단하는 is null / is not null.
-- 커미션이 등록되지 않은 사원 리스트 => comm이 null인 사원.
select * from emp where comm is null;
-- 커미션이 등록되어 있는 사원 리스트 => comm이 null이 아닌 사원.
select * from emp where comm is not null;
-- 커미션을 받지 않는 사원 리스트.
select * from emp where comm=0 or comm is null;
-- 커미션을 받는 사원 리스트.
select * from emp where not(comm=0 or comm is null);
select * from emp where comm>0 and comm is not null;



-- 정렬을 위한 ORDER BY 절.
-- select의 출력 결과의 정력 : 오름차순 ASC, 내림차순 DESC.
-- select ... from ... where ... order by 컬럼이름{ [ASC] , [DESC] }.
-- 급여순(오름차순)으로 사원 리스트 출력.
select * from emp order by sal;
select * from emp order by sal asc;     -- 기본이 오름차순이라 asc 생략가능.
select * from emp order by sal desc;

-- 문자정렬.
-- 이름순 : 사전 순서.
select * from emp order by ename;
select * from emp order by ename asc;
select * from emp order by ename desc;

-- 날짜순.
-- 입사일이 빠른 순서대로 정렬 : 오름차순.
select * from emp order by hiredate;
select * from emp order by hiredate asc;
-- 최근 입사일 기준으로 정렬 : 내림차순.
select * from emp order by hiredate desc;

-- 급여순으로 정렬.
select * from emp order by sal, ename;     -- 급여같은 사람이 있을때 , 찍고 (ename 등) 조건을 걸어서 정렬.
select * from emp order by sal, ename desc;
