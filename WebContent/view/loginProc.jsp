<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
  <!-- Page Content -->
    <div class="container">
	<br><br>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">Home</a>
        </li>
        <li class="breadcrumb-item active">로그인</li>
      </ol>
		<div class="row">
			<div class="col-lg-12">
			<br><br>
				<div class="col-md-4 col-md-offset-4">
					<c:choose>
						<c:when test="${flag}">
						로그인 되었습니다.<br><br>
						<a href="/admin/index.do"><button class="btn btn-default">관리자 페이지 접속</button></a>
						<br><br>
						</c:when>
						<c:otherwise>
						등록되지 않은 아이디거나<br>
						아이디/비밀번호를 다시 확인하세요
						<br><br>
						</c:otherwise>
					</c:choose>
				</div>
				<br><br>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->

</div>
<!-- /#wrapper -->
