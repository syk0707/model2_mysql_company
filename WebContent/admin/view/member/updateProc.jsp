<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.kmmember.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp"%>

      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
						${str}
						<button type='button' onclick="location.href='./updateForm.do?id=${id}'">다시 시도</button>
							

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
