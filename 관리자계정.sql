SELECT SYSDATE FROM DUAL;

--한줄 주석
--HR 계정 언락하고 비밀번호 1234 지정

ALTER USER HR ACCOUNT UNLOCK
IDENTIFIED BY 1234; 