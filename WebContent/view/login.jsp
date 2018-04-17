<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
			<br><br>
				<div class="col-md-4 col-md-offset-4">
					<div class="login-panel panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">로그인이 필요합니다</h3>
						</div>
						<div class="panel-body">
						                                
							<form name = 'frm' method='POST' action='${root}/loginProc.do'>
                                    <div class="form-group">
                                    <input type="text" placeholder="아이디" name="id" class="form-control" autofocus required>
                                    </div>
                                    <div class="form-group">
                                    <input type="password" placeholder="비밀번호" name="pw" class="form-control" required>
                                	</div>
                                	<!-- Change this to a button or input when using this as a form -->
                                	<input type = "submit" value = "로그인" class="form-control" >
							</form>
						</div>
					</div>
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
