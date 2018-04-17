<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>
<html>
<head>

<script>
	function read(num) {
		var url = "./main/bbsread.do";
		url += "?num=" + num; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=1";
		location.href = url;
	}
</script>
</head>
<body>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('images/carousel_first.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>처음 슬라이드</h3>
              <p>상세설명</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/carousel_second.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>두번째 슬라이드</h3>
              <p>상세설명</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/carousel_third.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>세번째 슬라이드</h3>
              <p>상세설명</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>


    <!-- Page Content -->
    <div class="container">
	<br><br>
      <!-- Portfolio Section -->
      <h3>가공소개</h3>
		<br>
      <div class="row">
	<c:forEach var="dto" items="${list}">
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="${root}/main/read.do"><img class="card-img-top" src="${root}/view/storage/${dto.filename}" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="${root}/view/detail.jsp">${dto.subject}</a>
              </h4>
              <p class="card-text">${dto.subtitle}</p>
            </div>
          </div>
        </div>
	</c:forEach>

      </div>
      <!-- /.row -->
      <hr>

      <!-- Call to Action Section -->
      <div class="row mb-1">
        <div class="col-md-5">
          <p align="center"><a href="${root}/main/bbslist.do">공지사항</a></p>
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
 <div class="col-md-4"></div>
        <div class="col-md-3">
        <br><br><br>
          <a class="btn btn-lg btn-secondary btn-block" href="${root}/view/contact.do">연락처 남기기</a>
        </div>
      </div>

    </div>
    <!-- /.container -->
    </body>
    </html>