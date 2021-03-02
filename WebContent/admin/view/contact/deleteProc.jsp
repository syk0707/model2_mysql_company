<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file = "/ssi/ssi.jsp" %>

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<script type = "text/javascript">
function blist(){
	var url = "list.do";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	
	location.href=url;
}
</script>
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12"> 
						<DIV class="content">
						<DIV class="title">삭제 확인</DIV>
						<DIV class="content">
						<c:choose>
						<c:when test="${flag}">
						글 삭제를 완료했습니다.
						</c:when>
						<c:otherwise>
						글 삭제를 실패했습니다.
						</c:otherwise>
						</c:choose>
						</DIV>
						<DIV class='bottom'>
						<input type='button' value='목록' onclick="blist()">
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
 
