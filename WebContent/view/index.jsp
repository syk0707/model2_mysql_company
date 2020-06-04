<%@page contentType="text/html; charset=UTF-8"%>
<%@ page
	import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp"%>
<html>
<head>
<title>금명정밀기어</title>
<!-- Bootstrap core CSS -->
<link href="${root}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${root}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
	function manuread(num) {
		var url = "${root}/main/manuread.do";
		url += "?num=" + num; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		location.href = url;
	}
	function read(num) {
		var url = "${root}/main/bbsread.do";
		url += "?num=" + num; //js변수
		url += "&col=${col}";
		url += "&word=${word}"; //jsp 변수
		url += "&nowPage=1";
		location.href = url;
	}
</script>
</head>
<body style="background-color: #c1c1c1;">
	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('images/carousel_first.png')">
					<div class="carousel-caption d-none d-md-block">
						<h3></h3>
						<p></p>
					</div>
				</div>
				<div class="carousel-item"
					style="background-image: url('images/carousel_second.png')">
					<div class="carousel-caption d-none d-md-block">
						<h3></h3>
						<p></p>
					</div>
				</div>
				<div class="carousel-item"
					style="background-image: url('images/carousel_third.png')">
					<div class="carousel-caption d-none d-md-block">
						<h3></h3>
						<p></p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<br> <br>
	</header>
	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="card h-100" style="background-color: #c1c1c1;">
						<div class="card-body" style="text-align: center;">
						<a href="${root}/main/ceo.do">
			            <img src="${root}/images/a.png" style="width:40px; height:40px;">
			            <br>
							<br>  인사말 </a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="card h-100" style="background-color: #c1c1c1;">
						<div class="card-body" style="text-align: center;">
						<a
								href="${root}/main/manulist.do">
            <img style="width:40px; height:40px;" src="${root}/images/b.png">
            <br>
							<br>  제품
								안내 </a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="card h-100" style="background-color: #c1c1c1;">
						<div class="card-body" style="text-align: center;">
						<a href="${root}/main/map.do">
            <img style="width:40px; height:40px;" src="${root}/images/c.png">
            <br>
							<br> 오시는 길 </a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container">
	<hr>
	</div>

	<!-- Page Content -->
	<div class="content">
		<div class="container">
			<!-- Marketing Icons Section -->
			<div class="row" style="background-color: #c1c1c1;">
				<!-- Call to Action Section -->

					<div class="col-md-5">
						<p align="center">
							<a href="${root}/main/bbslist.do"><b>공지사항</b></a>
						</p>
						<div class="table-responsive" id="main-tablefontsize">
							<table class="table table-sm">
								<tr>
									<th width="70%">제목</th>
									<th width="30%">작성일</th>
								</tr>
								<c:forEach var="dto" items="${list2}">
									<tr>
										<td width="70%"><a href="javascript:read('${dto.num}')">${dto.subject}</a></td>
										<td width="30%">${dto.regdate}</td>
									</tr>
								</c:forEach>

							</table>
						</div>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-5">
						<table class="table table-sm">
							<tr>
								<th>연락처</th>
							</tr>
							<tr>
								<td>전화번호 : 02-2634-5944</td>
							</tr>
							<tr>
								<td>휴대폰번호 : 010-4348-4350</td>
							</tr>
							<tr>	
								<td>FAX번호 : 02-2675-8192</td>
							</tr>
						</table>
					</div>
				</div>


		</div>
		<!-- /.container -->
	</div>
</body>
</html>