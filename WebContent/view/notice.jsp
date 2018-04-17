<%@page contentType="text/html; charset=UTF-8" %>

<%request.setCharacterEncoding("UTF-8"); 
	String root = request.getContextPath();%>

<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>금명기어</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=root %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=root %>/css/modern-business.css" rel="stylesheet">
	
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "72d63d9fa36e7c";
wcs_do();
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116654859-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-116654859-1');
</script>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="<%=root %>/index.jsp"><img src="<%=root %>/images/logo.png" width="100%"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                회사소개
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="<%=root %>/view/ceo.jsp">CEO인사말</a>
                <a class="dropdown-item" href="<%=root %>/view/history.jsp">연혁</a>
                <a class="dropdown-item" href="<%=root %>/view/philosophy.jsp">경영철학</a>
                <a class="dropdown-item" href="<%=root %>/view/map.jsp">오시는길</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=root%>/view/grinding.jsp">기어 연마(치연마)</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                기어 치절+챔퍼링
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="<%=root %>/view/champering_round.jsp">라운드</a>
                <a class="dropdown-item" href="<%=root %>/view/champering_angle.jsp">앵글</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                기어 치절
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="<%=root%>/view/spur.jsp">스퍼기어(평기어)</a>
                <a class="dropdown-item" href="<%=root%>/view/helical.jsp">헬리컬기어</a>
                <a class="dropdown-item" href="<%=root%>/view/chain.jsp">체인기어</a>
                <a class="dropdown-item" href="<%=root%>/view/rack.jsp">랙크기어</a>
                <a class="dropdown-item" href="<%=root%>/view/involute.jsp">인벌류트기어</a>
                <a class="dropdown-item" href="<%=root%>/view/internal.jsp">내치기어</a>
                <a class="dropdown-item" href="<%=root%>/view/worm.jsp">웜기어</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                고객지원
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="<%=root%>/view/notice.jsp">공지사항</a>
                <a class="dropdown-item" href="<%=root%>/view/contact.jsp">연락처 남기기</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>


    <!-- Page Content -->
    <div class="container">

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
	
    <!-- Footer -->
    <footer class="py-5 bg-light">
      <div class="container">
      
        <p class="m-0 text-center text-black"><img src="<%=root %>/images/logo.png"><br>주소 : 서울시 영등포구 도림로141다길 15-1(문래동4가 31-31)<br> 전화번호 : 02)2634-5944 FAX : 02)2675-8192 H.P : 010-4348-4350 E-mail : kmgear@naver.com</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<%=root %>/vendor/jquery/jquery.min.js"></script>
    <script src="<%=root %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
