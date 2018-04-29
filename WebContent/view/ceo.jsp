<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp"%>
<%request.setCharacterEncoding("UTF-8"); 
	String root = request.getContextPath();
%>

    <!-- Page Content -->
    <div class="container">
		<br><br>
      <!-- Page Heading/Breadcrumbs -->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">홈</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">회사소개</a>
        </li>
        <li class="breadcrumb-item active">CEO 인사말</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <a href="${root }/main/ceo.do" class="list-group-item">CEO인사말</a>
            <a href="${root }/main/map.do" class="list-group-item">오시는길</a>
          </div>
        </div>
        <!-- Content Column -->
          <div class="col-lg-3">
          <img src="${root}/images/company.png">
          </div>
          <div class="col-lg-5">
          <h2>인사말</h2>
          <p>안녕하십니까. 
            <br>금명정밀기어는 자동차기어, 공작기어를 비롯한 각종 변속기어를 전문으로 가공 생산하고 있습니다. 
          	<br>S/P 및  KEY, 챔퍼링 , 내 외치 가공 등 다양한 작업들도 소화하고 있습니다.
          	<br>20여년 동안 쌓아온 숙달된 기술력으로 늘 고객여러분의 만족도 향상을 위해 노력하는 금명정밀기어가 되겠습니다.</p>
          </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
    
    </div>
    <!-- /#wrapper -->