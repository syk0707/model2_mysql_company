<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp"%>
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
        <li class="breadcrumb-item active">연혁</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <a href="${root }/main/ceo.do" class="list-group-item">CEO인사말</a>
            <a href="${root }/main/history.do" class="list-group-item">연혁</a>
            <a href="${root }/main/philosophy.do" class="list-group-item">경영철학</a>
            <a href="${root }/main/map.do" class="list-group-item">오시는길</a>
          </div>
        </div>
        <!-- Content Column -->
        <div class="col-lg-9 mb-4">
          <h2>연혁</h2>
          <p>연혁이 들어갈 구역입니다.</p>
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

        </div>
    <!-- /#wrapper -->