<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
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
      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12"> 
						<DIV class="content">
							<!-- *********************************************** -->
							<c:choose>
							<c:when test="${flag}">
							<DIV class="content"> 
							부모글이므로 삭제가 불가능합니다.
							</DIV>
							<DIV class='bottom'>
							<input type='button' value='뒤로가기' onclick="history.back()">
							<input type='button' value='목록' onclick="blist()">
							</DIV>
							</c:when>
							<c:otherwise>
							<DIV class="title">비밀번호 입력</DIV>
							 
							<FORM name='frm' method='POST' action='deleteProc.do'>
							<input type="hidden" name="num" value="${param.num}"> 
							<input type="hidden" name="col" value="${param.col}">
							<input type="hidden" name="word" value="${param.word}">
							<input type="hidden" name="nowPage" value="${param.nowPage}">
							<input type="hidden" name="oldfile" value="${param.oldfile}">
							  <TABLE>
							    <TR>
							      <TH>패스워드</TH>
							      <TD><input type="password" name="passwd" placeholder="비밀번호를 입력하세요" required></TD>
							    </TR>
							  </TABLE>
							  <DIV class='bottom'>
							    <input type='submit' value='삭제'>
							    <input type='button' value='목록' onclick="blist()">
							  </DIV>
							</FORM>
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
							