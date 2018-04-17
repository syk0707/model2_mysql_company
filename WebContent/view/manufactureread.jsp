<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>

<%request.setCharacterEncoding("UTF-8");
	String root = request.getContextPath();
%>

<html>
<head>

<script>
	function list(num) {
		var url = "./main/manufacturelist.do";
		url += "?num=" + num; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=1";
		location.href = url;
	}
</script>
</head>

  <body>

    <!-- Page Content -->
    <div class="container">


      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="./index.do">홈</a>
        </li>
        <li class="breadcrumb-item active">상세페이지</li>
      </ol>

      <!-- Page Heading/Breadcrumbs -->
      <h4 class="mt-4 mb-3">
        <small>제목 : ${dto.subject}</small>
      </h4>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-8">
          <img class="img-fluid" src="${root}/images/${dto.filename}" alt="">
        </div>

        <div class="col-md-4">
        	${dto.subtitle }
        </div>
        <br><br>
		<div class="col-md-12">
			${dto.content}
		</div>
      </div>
      <div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->

