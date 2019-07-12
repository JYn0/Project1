##  기획서 내용

1. ##### 기획의도 및 레퍼런스(2장 이내) 

   : Bootstrap을 사용하여 지금까지 배운 Java와 Web Programming(html5+CSS3+JavaScript, jQuery, Ajax, JSP), Spring으로 기본적인 CRUD기능에 여러 기능을 추가하여 '스포츠 에이전시' 페이지를 제작한다.

   * 소속 팀, 선수 소개


   * 관리자 모드(Master) : 선수 등록 및 정보 수정
   * 회원 : 모든 페이지 접근 가능
   * 비회원 : 일부 페이지만 접근 가능

2. 시스템 구성

3. 사용 SW

   * Java
   * Web Programming(html5+CSS3+JavaScript, jQuery, Ajax, JSP)
   * Spring(mybatis, maven)
   * Oracle(DB, tomcat)

4. ERD

5. 메인 화면 구성

6. UI 흐름도




----------------------------------------------------------------

## 피드백

### 1조

12일 - DDL, DML data 확인+ 화면이동까지

다음주 - Biz, Dao, 컨트롤러 + 꾸미기

2p - Spring html5 등을 활용한 으로

3p - Spring MVC 표현 안되어있음(Dispatcher,)

4p - 구체적인 버전

5p - 게시판 테이블(누가 입력했는지, user-사용자 관리자 , 기록실 data는 고정data, 과거 data 어떻게할지, hitter/pitcher 나누지않아도 됨-하나로 해서 구분하도록)

기록table은 별도로 존재, h/p 속성이 다르지 않아서 별도로 나누지않아도됨 어떤팀에 소속된 선수이냐, 선수의 기록, 팀의 기록 별도로 관리, table과 column, 과거기록(history) 어디에 넣을지

MVC, Controller

history - 바뀌지않고, 현재기록 추가됨

팀기록관리, 선수 하나로, 이 선수의 기록이 p관련 기록테이블,h관련 기록테이블 따로 존재, 그 기록이 쌓일 수 있도록,

제목 기술어필

팀

선수

팀-기록실

선수-기록실 두개



-------------------------------------------------------------------------------------------

### 2조

톰캣은 동그라미 안으로, 톰캣 위에 servlet컨테이너 위에, 그 위에 spring mvc가 있고

biz와 dao -> spring framework안에, mybatis도

브라우저에서 어떤 기술을 썼는지(웹프로그래밍) 넣어서 뭘 공부했는지 보여주기



### 3조

App -> Web, user는 web 위에, Spring 부각되도록



### 4조

Spring container 위에 스프링 MVC가 올라감, 그 위에 비즈,dao가 있음



### 5조

게시판 테이블은 하나