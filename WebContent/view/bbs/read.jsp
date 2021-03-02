<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "model.kmbbs.*"%>
<%@ include file = "/ssi/ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function blist(){
	var url = "${root}/main/bbslist.do";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";

		location.href = url;
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
						<div class="container">
						<br><br><h2><span class="glyphicon glyphicon-pencil"></span>공지</h2>
					
						  <TABLE class="table table-bordered">
							<TR>
								<TH>성명</TH>
								<TD>${dto.name}</TD>
							</TR>
							<TR>
								<TH>제목</TH>
								<TD>${dto.subject}</TD>
							</TR>
							<TR>
								<TH>내용</TH>
								<TD>${content}</TD>
							</TR>
							<TR>
								<TH>등록날짜</TH>
								<TD>${dto.regdate}</TD>
							</TR>
							<TR>
								<TH>파일명</TH>
								<TD>
								<c:choose>
								<c:when test="${not empty dto.filename}">
					    		<a href="javascript:fileDown('${dto.filename}')">${dto.filename}</a> <br>
					    		파일용량 : 
					    		<c:set var="filesize" value="${dto.filesize/1024}"></c:set>
					    		${filesize-(filesize%1)} KB
								</c:when>
								<c:otherwise>
								&nbsp;
								</c:otherwise>
								</c:choose>
								</TD>
							</TR>
						</TABLE>
					<input type='button' value='목록' onclick="blist()">
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

