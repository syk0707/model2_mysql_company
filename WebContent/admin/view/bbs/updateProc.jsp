<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function blist(){
	var url = "list.do";
	url += "?col=${col}";
	url += "&word=${word}";
	url += "&nowPage=${nowPage}";
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
<DIV class="title"> 수정확인 </DIV>
 
<div class="content">

<c:choose>
<c:when test="${!pflag}">
비밀번호가 잘못되었습니다.
<button type='button' onclick='history.back()'>다시 시도</button>
</c:when>
<c:when test="${flag}">
글 수정을 성공했습니다.
</c:when>
<c:otherwise>
글 수정을 실패했습니다.
</c:otherwise>
</c:choose>
</div> 
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