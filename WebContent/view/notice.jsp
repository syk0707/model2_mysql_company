<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp"%>
<%request.setCharacterEncoding("UTF-8"); 
	String root = request.getContextPath();
%>

    <!-- Page Content -->
    <div class="container">
		<br><br>
      <!-- Page Heading/Breadcrumbs -->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">홈</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">고객지원</a>
        </li>
        <li class="breadcrumb-item active">공지사항</li>
      </ol>

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">
        <small>공지사항</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">홈</a>
        </li>
        <li class="breadcrumb-item active">공지사항</li>
      </ol>
	<div class="row">
	  <TABLE class="table table-bordered">
  	<thead>
    <TR>
      <TH>번호</TH>
      <TH>등록자</TH>
      <TH>제목</TH>
      <TH>등록날짜</TH>
   </TR>
	<TR>
   	  <TD>1</TD>
   	  <TD>금명기어</TD>
   	  <TD>홈페이지가 오픈했습니다</TD>
   	  <TD>2018-04-01</TD>
	</TR>  
	  </thead> 
	  </TABLE>
	</div>
	  <br><br>
    </div>
    <!-- /.container -->

