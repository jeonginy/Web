<%@page import="member.MemberInfo"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />
<!-- 해당하는 필드의 값을 value로 변경 -->
<jsp:setProperty name="member" property="id" value="jeongin"/>
<jsp:setProperty name="member" property="name" value="정인"/>

<!--  필드, 기본생성자, getter&setter -> 패키지이름, 키,value까지 넣음 
		** 위와 아래의 방식에서 차이가 없음 ** 
		-->
<%
/* MemberInfo member = new MemberInfo();
	member.setId("HappyVirus");
	member.setName("Jeongin"); */
	
	//	해당하는 키를 member 값으로 설정 
	request.setAttribute("member", member);
%>
<jsp:forward page="/useObject.jsp" />
