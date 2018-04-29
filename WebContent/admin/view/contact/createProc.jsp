<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file = "/ssi/ssi.jsp" %>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<br><br>
      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12"> 
						<DIV class="content">
						<c:choose>
						<c:when test="${flag}">
						<h3>연락처 등록을 완료했습니다.</h3>
						</c:when>
						<c:otherwise>
						<h3>연락처 등록을 실패했습니다.</h3>
						</c:otherwise>
						</c:choose>
						</DIV>
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

						  
						  