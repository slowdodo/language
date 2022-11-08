# EL이 나온 이유

기존의 jsp는 스크립팅 요소 활용의 문제점과 스크립틀릿으로 작성된 코드는 Java를 알지 못하는 개발자들에게는 이해 뿐 아니라 유지보수가 어렵다.

표현식은 간단하지만 제한적인 기능 제공으로 다양한 결과 출력이 어렵다.

표준 액션은 웹 개발자에게는 친근한 표현이고, 기본형 형변환을 지원하여 편리하지만 구문 구조가 복잡하고, 서브 프로퍼티를 접근할 수 없다는 단점이 있다.

그리고 스크립팅 요소의 활용이 적은 JSP 페이지를 작성하는 것이 추세이다.

# EL이란?

JSP 기본 문법을 보완할 목적으로 간단하고 직관적인 표현으로 데이터, 속성, JSP 기본 객체 등 자바 컴포넌트들에 대한 손쉬운 접근 방법을 제공하는 스크립트 언어


# 주요 사용되는곳

MVC 모델 2에서 View를 작성한다.

# 특징


# EL 객체

## 기본객체

| pageContext  	|  JSP의 page 기본 객체와 동일한 데이터 저장 영역에서 속성을 관리한다. 	|
|:---:	|---	|
|  pageScope  	|  JSP의 pageContext 기본 객체에 저장된 속성을 데이터 저장 영역에서 관리한다. 	|
|  requestScope  	|  JSP의 Request 기본 객체와 동일한 데이터 저장 영역에서 속성을 관리한다. 	|
|  sessionScope  	|  JSP의 Session 객체와 동일한 데이터 저장 영역에서 속성을 관리한다. 	|
|  applicationScope  	|  JSP의 application 객체와 동일한 데이터 저장 영역에서 속성을 관리한다. 	|

## 매개 변수 관련된 객체

| initParam  	|  web.xml 파일에 등록된 초기화 매개 변수를 관리한다.   (application.getInitParameter(name) 과 동일하다.) 	|
|:---:	|---	|
|  param  	|  요청 객체에 의해 전달받은 데이터를 관리한다. (request.getParameter(name)과 동일하다.) 	|
|  paramValues  	|  요청 객체에 의해 전달받은 데이터를 관리한다.   (request.getParameterValues(name)과 동일하다.) 	|

## 헤더 관련 객체

| header  	|  헤더(header) 정보를 데이터로 저장하고 관리한다. (request.getHeader(name) 과 동일하다.) 	|
|:---:	|---	|
|  headerValues  	|  헤더 정보를 데이터로 저장하고 관리할 때 배열을 사용한다.   (request.getHeaders(name)과 동일하다.) 	|

## 쿠키 관련 객체

| cookie  	|  쿠키 정보를 데이터로 저장하고 관리한다. (request.getCookies() 로 쿠키 정보 가져온다.) 	|
|:---:	|---	|
