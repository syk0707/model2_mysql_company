<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file = "/ssi/ssi.jsp" %>

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
<!-- Global site tag (gtag.js) - Google Analytics -->
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
	<script type="text/javascript" src="${root}/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
  </head>
  <body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light fixed-top" style="background-color: #8f9399;">
      <div class="container">
        <a class="navbar-brand" href="${root}/index.do"><img src="${root}/images/logo.png" width="100%"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <strong>회사소개</strong>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio" style="background-color: #8f9399;">
                <a class="dropdown-item" href="${root}/main/ceo.do"><strong>CEO인사말</strong></a>
                <a class="dropdown-item" href="${root}/main/map.do"><strong>오시는길</strong></a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <strong>제품(기어연마·챔퍼링)</strong>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog" style="background-color: #8f9399;">
              	<a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eGear%>"><strong>기어 연마(치연마)</strong></a>
              	<a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eRound %>"><strong>라운드</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eAngle%>"><strong>앵글</strong></a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <strong>제품(기어치절가공)</strong>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog" style="background-color: #8f9399;">
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eSpur%>"><strong>스퍼기어(평기어)</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eHelical%>"><strong>헬리컬기어</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eChain %>"><strong>체인기어</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eRack%>"><strong>랙크기어</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eInvolute%>"><strong>인벌류트기어</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eNatch%>"><strong>내치기어</strong></a>
                <a class="dropdown-item" href="${root}/main/manulist.do?producttype=<%=eWorm %>"><strong>웜기어</strong></a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <strong>고객지원</strong>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog" style="background-color: #8f9399;">
                <a class="dropdown-item" href="${root}/main/bbslist.do"><strong>공지사항</strong></a>
                <a class="dropdown-item" href="${root}/main/contact.do"><strong>연락처 남기기</strong></a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
