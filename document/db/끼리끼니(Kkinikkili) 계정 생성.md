# 끼리끼니(Kkinikkili) sql

- sql 실행

  ```mariadb
  sqlplus SYSTEM/manager
  ```




- SYSTEM 계정 연결

  ```mariadb
  conn SYSTEM/manager
  ```

  



- 중복 계정 삭제

  ```mariadb
  DROP USER KK CASCADE;
  ```

  

- oracle 계정 생성

  ```mariadb
  CREATE USER KK IDENTIFIED BY KKPW
  DEFAULT tablespace USERS
  TEMPORARY tablespace TEMP;
  ```



- 접속 권한 부여

  ```mariadb
  conn SYSTEM/manager
  
  GRANT RESOURCE, CONNECT TO KK;
  ```

  

- 계정 연결

  ```mariadb
  conn KK/KKPW
  
  --계정 확인
  show user
  ```



- 계정 활성화

  ```mariadb
  ALTER USER KK IDENTIFIED BY KKPW;
  ```

  

- 테스트 코드 진행

  ```mariadb
  DROP TABLE testtable;
  
  CREATE TABLE testtable(
      a VARCHAR2(10), 
  	b NUMBER);
  	
  DESC testtable;
  
  DROP TABLE testtable;
  ```

