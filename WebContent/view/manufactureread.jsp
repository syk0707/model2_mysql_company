<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, model.kmmanufacture.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp"%>

<html>
<head>
<title>${dto.subject}</title>
<script>
	function list(producttype) {
		var url = "./main/manufacturelist.do";
		var producttype = encodeURIComponent(producttype);
		url += "?producttype=" + producttype; //js변수
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
		<br>
		<br>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="./index.do">홈</a></li>
			<li class="breadcrumb-item active">기어 가공</li>
			<li class="breadcrumb-item active">${dto.producttype}</li>
		</ol>
		<br>
		<!-- Page Heading/Breadcrumbs -->
		<div class="col-lg-6 col-md-6">
		<table class="table">
			<tr>
				<th>
					<p style="font-size:15px;">
						제목
					</p>
				</th>
				<td>
					<p style="font-size:15px;">
						${dto.subject }
					</p>
				</td>
			</tr>
		</table>
		</div>
		<!-- Portfolio Item Row -->
		<div class="row">
		<div class="col-lg-6 col-md-6">
			<br>
			<br>
			<div class="col-md-12">
				<img class="img-fluid" src="${root}/view/storage/${dto.filename}"
					alt="" style='height: 100%; width: 100%; object-fit: contain'>
			</div>

			<div class="col-md-4"></div>

			<div class="col-md-12">
				<p style="font-size:14px; text-align:center;"><b>[${dto.subtitle}]</b></p>
				<br>
			</div>

			<div class="col-md-12">
				<br>
				<br>
				<div style="font-size:12px;">${dto.content}</div>
			</div>
			<br>
			<br>
		</div>
		<div></div>
		<!-- /.row -->
	</div>
	</div>
	<!-- /.container -->