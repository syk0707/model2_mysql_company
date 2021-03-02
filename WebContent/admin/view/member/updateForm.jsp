<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp"%>
<%	request.setCharacterEncoding("UTF-8");%>
      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
					<FORM name='frm' method='POST' action='./updateProc.do'>
                    <div class="col-lg-12">
							<input type="hidden" name="id" value="${param.id}">
							비밀번호 변경<br><br>
							현재 비밀번호를 입력하고, 변경할 비밀번호를 2번 입력하세요<br>
									<div class="form-group">
										<label>기존 비밀번호</label> <input type="password" name="chkpasswd"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>변경할 비밀번호</label> <input type="password" name="npasswd"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>기존 비밀번호</label> <input type="password" name="chkNpasswd"
											class="form-control" required>
									</div>
									    <input type ='submit' class="btn btn-default" value="변경">
                    </div>
                    <!-- /.col-lg-12 -->
                    </FORM>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
