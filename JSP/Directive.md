# <%@ page ~ %>

페이지 관련 다양한 프로퍼티를 지정한다.

예시
``` jsp
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
```

# <%@ include ~ %>
변환 시점에 현재 페이지에 포함할 코드나 문서를 지정한다.

# <%@ taglib ~ %>


# 속성값
| 이름 	| 설명 	|
|:---:	|:---:	|
| contentType 	| JSP페이지가 생성할 응답 데이터의 타입을 설정 	|
| import 	| JSP페이지에서 사용할 자바 클래스를 지정 	|
| session 	| JSP 페이지에서 세션 사용 여부 설정 	|
| buffer 	| JSP페이지의 풀력 버퍼크기 설정 none로 설정시 버퍼를 사용하지 않음 	|
| autoFlush 	| 출력버퍼가 다 찬 경우, 자동 방출 여부 설ㅇ정 	|
| info 	| JSP페이지에 대한 설명 	|
| errorPage 	| 에러가 발생할 경우 대체 페이지를 설정 	|
| isErrorPage 	| 에러를 처리할 에러 처리 페이지인지 설정, true인 경우 exception을 사용할 수 있음 	|
| pageEncoding 	| JSP페이지 자체의 캐릭터 셋을 설정 	|
| isELgnored 	| JSP페이지의 표현 언어 지원 여부 설정 	|
| deferredSyntaxAllowedAsLiteral 	| #{}를 deferred EL 기호로 사용할지 여부 	|
| trimDirectiveWhitespace 	| 출력 결과에서 템플릿 텍스트의 공백 문자를 제거할지  	|