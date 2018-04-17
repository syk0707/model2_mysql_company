<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
			<br><br>
			
				<div class="col-md-4 col-md-offset-4">
					<c:choose>
						<c:when test="${flag}">
						로그인 되었습니다.<br>
						<a href="/admin/index.do"><button class="btn btn-default">관리자 페이지 접속</button></a>
						</c:when>
						<c:otherwise>
						등록되지 않은 아이디거나<br>
						아이디/비밀번호를 다시 확인하세요
						</c:otherwise>
					</c:choose>
					
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
