<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<%@ taglib prefix="util" uri="/ELFunctions" %>   
<%@ page import = "java.net.URLEncoder" %>
<%
	request.setCharacterEncoding("UTF-8");
	String gear = "기어연마치연마";
	String round = "챔퍼링라운드";
	String angle = "챔퍼링앵글";
	String spur = "치절스퍼";
	String helical = "치절헬리컬";
	String chain = "치절체인";
	String rack = "치절랙크";
	String involute = "치절인벌류트";
	String natch = "치절내치";
	String worm = "치절웜";
	String facilities = "생산설비";
	
	String eGear = URLEncoder.encode(gear, "UTF-8");
	String eRound = URLEncoder.encode(round, "UTF-8");
	String eAngle = URLEncoder.encode(angle, "UTF-8");
	String eSpur = URLEncoder.encode(spur, "UTF-8");
	String eHelical = URLEncoder.encode(helical, "UTF-8");
	String eChain = URLEncoder.encode(chain, "UTF-8");
	String eRack = URLEncoder.encode(rack, "UTF-8");
	String eInvolute = URLEncoder.encode(involute, "UTF-8");
	String eNatch = URLEncoder.encode(natch, "UTF-8");
	String eWorm = URLEncoder.encode(worm, "UTF-8");
	String eFacilities = URLEncoder.encode(facilities, "UTF-8");
%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
