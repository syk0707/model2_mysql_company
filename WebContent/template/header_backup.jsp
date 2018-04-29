<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file = "/ssi/ssi.jsp" %>
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
    <link href="${root}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${root}/css/modern-business.css" rel="stylesheet">
	<!-- Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116654859-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-116654859-1');
	</script>
		<!-- Naver Analytics -->		
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
	if(!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "72d63d9fa36e7c";
	wcs_do();
	</script>
	<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	</style>
	<script type="text/javascript" src="${root}/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
  </head>
  <body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="${root}/index.do"><img src="${root}/images/logo.png" width="100%"></a>
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
                <a class="dropdown-item" href="${root}/main/ceo.do">CEO인사말</a>
                <a class="dropdown-item" href="${root}/main/history.do">연혁</a>
                <a class="dropdown-item" href="${root}/main/philosophy.do">경영철학</a>
                <a class="dropdown-item" href="${root}/main/map.do">오시는길</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                기어연마·챔퍼링
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              	<a class="dropdown-item" href="${root}/main/manulist.do?producttype=기어연마치연마">기어 연마(치연마)</a>
              </div>
              <div class="dropdown-divider dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              	<a class="dropdown-item" href="${root}/main/manulist.do?producttype=챔퍼링라운드">라운드</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=챔퍼링앵글">앵글</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                기어치절가공
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절스퍼">스퍼기어(평기어)</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절헬리컬">헬리컬기어</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절체인">체인기어</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절랙크">랙크기어</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절인벌류트">인벌류트기어</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절내치">내치기어</a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=치절웜">웜기어</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                고객지원
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="${root}/main/bbslist.do">공지사항</a>
                <a class="dropdown-item" href="${root}/main/contact.do">연락처 남기기</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
