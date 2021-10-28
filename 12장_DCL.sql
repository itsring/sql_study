--DCL : 데이터 제어어( 데이터베이스 사용권한을 주고 회수하는 명령어)
--테이블스페이스의 생성(테이블을 생성 할 수 있는 공간)
--파일이름 john.dbf에 10mb 사이즈로 파일 생성, 자동으로 5mb씩 증가
CREATE TABLESPACE johnSpace
DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\john.dbf' SIZE 10M 
AUTOEXTEND ON NEXT 5M;

--새 유저 존 생성 / 비밀번호 1234 ,테이블스페이스 johnSpace사용
CREATE USER john IDENTIFIED BY 1234 default tablespace johnSpace;
--존에게 접속권한주기 
GRANT CREATE SESSION TO john;
--존에게 테이블 만들기 권한 주기
GRANT CREATE TABLE TO john;
--권한을 하나씩 주면 귀찮기 때문에 한번에 주기
--RESOURCR(롤ROLE) 로 오브젝트 권한 허용 / 권한들의 모음을 주기
GRANT CONNECT, RESOURCE TO john;    -- CONNECT는 접속 관련 권한
                                    -- RESOURCE는 객체, 데이터 사용 권한 _ (생성, 수정 ,삭제, 조회 등)
--DBA(Role)로 관리자 권한 허용 / 아무나 주면 안됨
--REVOKE 권한 제거 / REVOKE 권한명 ON 테이블명 FROM 계정;
REVOKE CREATE TABLE , RESOURCE FROM john; -- 존에게 줬던 테이블 생성, 객체관련 모든 권한 제거
REVOKE CONNECT FROM john; -- 접속권한 제거
--DROP USER john CASCADE; 계정 삭제 (접속중에는 삭제 안됨 -> 접속 해제 후 삭제)
DROP USER john CASCADE; 
--DROP TABLESPACE johnSpace; 테이블스페이스 삭제
DROP TABLESPACE johnSpace;
--※자주 쓰는 내용※ / 계정에 비밀번호 변경
--SCOTT계정 비밀번호 변경
ALTER USER scott IDENTIFIED BY "tiger";

--현재 오라클 서버의 포트번호를 확인
SELECT
dbms_xdb.gethttpport() from dual;
--톰캣 프로그램을 설치하면 이 서버는 똑같이 기본 8080이기 떄문에 포트가 같아서 충돌오류 뜸
--오라클의 포트번호를 9090으로 바꾸기
exec dbms_xdb.sethttpport(9090);
commit;