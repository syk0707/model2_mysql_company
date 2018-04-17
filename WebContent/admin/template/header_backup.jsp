<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String root = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

* {
	font-family: 'Nanum Gothic', 'malgun-gothic', 'Open Sans', sans-serif;
}

a:link {text-decoration: none; color: #333333;}
a:visited {text-decoration: none; color: #333333;}
a:active {text-decoration: none; color: #333333;}
a:hover {text-decoration: none; color: #333333;}
#line{
	text-color: black;
	text-align: center;
	background-color: #E0ECF8;
	font-size: 16px;
	font-weight: 600;
}

#center {
	text-align: center;
}

#footer {
	width: 400px;
	background-color: #EEE;
    position: absolute; 
    left: 50%; 
    margin-left: -200px; 
    bottom:0;
}

</style>
<!-- Title here -->
<title>알뜰잡</title>

<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Styles -->
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
<!-- Bootstrap CSS -->
<link href="<%=root %>/css/bootstrap.min.css" rel="stylesheet">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" href="<%=root %>/css/settings.css" media="screen" />
<!-- Animate css -->
<link href="<%=root %>/css/animate.min.css" rel="stylesheet">
<!-- Dropdown menu -->
<link href="<%=root %>/css/ddlevelsmenu-base.css" rel="stylesheet">
<link href="<%=root %>/css/ddlevelsmenu-topbar.css" rel="stylesheet">
<!-- Countdown -->
<link href="<%=root %>/css/jquery.countdown.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="<%=root %>/css/font-awesome.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<%=root %>/css/style.css" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

</head>
<body>
<div class = "container">
<table>
	<tr>
		<td class="td" colspan="7">
			<img class="img" src="<%=root %>/template/images/main-03.jpg" width="100%">
		</td>
	</tr>
	
	<tr>
	
		<td id="line">
			<a href="<%=root %>/index.jsp">인덱스</a>
		</td>
		<td id="line">
			<a href="<%=root %>/board/createForm.do">글쓰기</a>
		</td>
		<td id="line">
			<a href="<%=root %>/board/list.do">글목록</a>
		</td>
		<td id="line">
			<a href="<%=root %>/">메뉴1</a>
		</td>
		<td id="line">
			<a href="<%=root %>/">메뉴2</a>
		</td>
		<td id="line">	
			<a href="<%=root %>/">메뉴3</a>
		</td>
		<td id="line">	
			<a href="<%=root %>/">메뉴4</a>
		</td>
	</tr>
</table>
</div>

<div style="width: 100%; padding-top: 10px;">