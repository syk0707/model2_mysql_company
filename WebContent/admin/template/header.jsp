<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file = "/ssi/ssi.jsp" %>
<%	request.setCharacterEncoding("UTF-8");
	String root = request.getContextPath();%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta name="google-signin-client_id" content="456312344362-s51eh9op5355cfdv6tbj1sdisg3bo6oo.apps.googleusercontent.com">
    <meta name="google-signin-scope" content="https://www.googleapis.com/auth/analytics.readonly">
    <title>Admin</title>

    <!-- Custom styles for this template -->
    <link href="${root}/css/modern-business.css" rel="stylesheet">

    <!-- Bootstrap Core CSS -->
    <link href="<%=root%>/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=root%>/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=root%>/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=root%>/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	  
	<script type="text/javascript" src="<%=root %>/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
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

</head>

<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=root%>/admin/index.do">금명기어 홈페이지 관리</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> 회원정보</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<%=root %>/logout.do"><i class="fa fa-sign-out fa-fw"></i> 로그아웃</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=root %>/admin/index.do"><i class="fa fa-home fa-fw"></i> 메인</a>
                        </li>
						<li>
                            <a href="<%=root %>/admin/bbs/list.do"><i class="fa fa-edit fa-fw"></i> 공지사항</a>
                        </li>
                        <li>
                            <a href="<%=root %>/admin/manufacture/list.do"><i class="fa fa-wrench fa-fw"></i> 가공정보</a>
                        </li>
                        <li>
                            <a href="<%=root %>/admin/contact/list.do"><i class="fa fa-user fa-fw"></i> 연락 확인</a>
                        </li>
                        <li>
                            <a href="https://analytics.google.com/"><i class="fa fa-dashboard fa-fw"></i> 방문 통계 상세 정보 확인(구글)</a>
                        </li>
                        <li>
                            <a href="https://analytics.naver.com/"><i class="fa fa-dashboard fa-fw"></i> 방문 통계 상세 정보 확인(네이버)</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> 기타 메뉴<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">기타</a>
                                </li>
                                <li>
                                    <a href="#">기타 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">기타</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> 페이지 예시<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">빈 화면</a>
                                </li>
                                <li>
                                    <a href="login.html">로그인 화면</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>