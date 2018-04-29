<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="${root}/js/jquery.ae.image.resize.js"></script>

    <script>
    (function($) { 
	  $( ".resize" ).aeImageResize({ height: 360, width: 270 });
    })(jQuery);
</script>
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
	url += "&nowPage=${nowPage}";
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
              <h3></h3>
              <p></p>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url('images/carousel_second.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3></h3>
              <p></p>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url('images/carousel_third.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3></h3>
              <p></p>
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
	<br>
	<h3 class="my-4">금명정밀기어 홈페이지에 오신 것을 환영합니다.</h3>
    <hr>
         <!-- Portfolio Section -->
      <div class="row" style="background-color: #c1c1c1;">
              <div class="col-lg-12 mb-12">
      	<h4 class="my-4">제품소개</h4>
      	</div>
	<c:forEach var="dto" items="${list}">
        <div class="col-lg-4 col-sm-6 portfolio-item" style="background-color: #c1c1c1;">
          <div class="card h-100" style="background-color: #c1c1c1;">
          	<div class="card-header">
            <a href="javascript:manuread('${dto.num}')"><img class="img-responsive btn-block resize" src="${root}/view/storage/${dto.filename}" alt="" 
            ></a><br>
                <h5>
                <a href="javascript:manuread('${dto.num}')">${dto.subject}</a>
              </h5>
              <h6>${dto.subtitle}</h6>
            </div>
          </div>
        </div>
	</c:forEach>

      </div>
      <!-- /.row -->
      <hr>

		<!-- Marketing Icons Section -->
      <div class="row" style="background-color: #c1c1c1;">
		<div class="col-lg-12 mb-12">
      	<h4 class="my-4">회사소개</h4>
      	</div>
        <div class="col-lg-6 mb-6">
          <div class="card h-100" style="background-color: #c1c1c1;">
            <h5 class="card-header">CEO 인사말</h5>
            <div class="card-body">
              <p class="card-text">안녕하십니까. 금명정밀기어는 자동차기어, 공작기어를 비롯한 각종 변속기어를 전문으로 가공 생산하고 있습니다.<br>
              S/P 및 KEY, 챔퍼링 , 내 외치 가공 등 다양한 작업들도 소화하고 있습니다.<br>
				20여년 동안 쌓아온 숙달된 기술력으로 늘 고객여러분의 만족도 향상을 위해 노력하는 금명정밀기어가 되겠습니다.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-6 mb-6">
          <div class="card h-100" style="background-color: #c1c1c1;">
            <h5 class="card-header">오시는 길</h5>
            <div class="card-body">
              <p class="card-text"><iframe
		  width="320"
		  height="240"
		  frameborder="0" style="border:0"
		  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB1g5EiwyP2I7Eb0SoizibNfqlubQnBxTs
		    &q=서울시 영등포구 도림로141다길 15-1">
		</iframe></p>
            <input type = "button" class="align-right btn btn-default" 
            onclick="location.href='${root}/main/map.do'" value="더보기">
            </div>

          </div>
        </div>
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
          <a class="btn btn-lg btn-secondary btn-block" href="${root}/main/contact.do">연락처 남기기</a>
        </div>
      </div>

    </div>
    <!-- /.container -->

    </body>
    </html>