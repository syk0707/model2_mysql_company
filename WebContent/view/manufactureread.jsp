<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>

<html>
<head>
<script>
	function list(producttype) {
		var url = "./main/manufacturelist.do";
		var producttype = encodeURIComponent(producttype);
		url += "?producttype="+producttype; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		location.href = url;
	}
</script>
</head>

  <body>
	
    <!-- Page Content -->
    <div class="container">
	<br><br>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="./index.do">홈</a>
        </li>
        <li class="breadcrumb-item active">기어 가공</li>
        <li class="breadcrumb-item active">${dto.producttype}</li>
      </ol>
		<br>
      <!-- Page Heading/Breadcrumbs -->
      <h4 class="mt-4 mb-3">
        제목 : ${dto.subject}
        <br>
        등록일 : ${dto.regdate}
        <br>
      </h4>
		
      <!-- Portfolio Item Row -->
      <div class="row">
		<br><br>
        <div class="col-md-8">
          <img class="img-fluid" src="${root}/view/storage/${dto.filename}" alt="" 
          style='height: 100%; width: 100%; object-fit: contain'>
        </div>

        <div class="col-md-4">
        </div>
		
		<div class="col-md-12">
		<h5 class="mt-4 mb-3">
        	${dto.subtitle}
			</h5>
			<br>
		</div>
		
		<div class="col-md-12">
				<br><br>
		      <h6 class="mt-4 mb-3">
				${dto.content}
			  </h6>
		</div>
		<br><br>
      </div>
      <div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->

