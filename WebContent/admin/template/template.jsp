<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String CONTENT_PAGE = (String)request.getAttribute("CONTENT_PAGE");
%>
<jsp:include page="./header.jsp"></jsp:include>
<!-- flush 속성은 포함될 페이지로 제어가 이동될 때 현재 포함하는 페이지가 지금까지 출력 버퍼에 저장한 결과를 처리하는 방법을 결정한다.-->
<jsp:include page = "<%=CONTENT_PAGE %>" flush="false"/>
<jsp:include page="./footer.jsp" flush="false"></jsp:include>
