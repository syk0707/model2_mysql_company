<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "model.kmbbs.*"%>
<%@ include file = "/ssi/ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function fileDown(filename){
	var url = "${root}/download";
	url+= "?filename="+filename;
	url+= "&dir=/admin/view/bbs/storage"
	location.href = url;
}
function reply(num){
	var url = "./replyForm.do";
	url += "?num="+num;
	url += "&col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	location.href=url;
}

function bdel(){
	var url = "./deleteForm.do";
	url += "?num=${dto.num}";
	url += "&oldfile=${dto.filename}";
	url += "&col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	
	location.href=url;
}
function bupdate(num){
	var url ="./updateForm.do";
	url += "?num="+num;
	url += "&col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	
	location.href=url;
}
function blist(){
	var url = "./list.do";
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
						<h2><span class="glyphicon glyphicon-pencil"></span>답변</h2>
					
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
								<TH>조회수</TH>
								<TD>${dto.count}</TD>
							</TR>
							<TR>
								<TH>등록날짜</TH>
								<TD>${dto.regdate}</TD>
							</TR>
							<TR>
								<TH>아이피</TH>
								<TD>${dto.ip}</TD>
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
					
					
							<button type='button' onclick="reply('${dto.num}')">답변</button>
							<button type='button' onclick="bdel()">삭제</button>
							<input type='button' value='수정'
								onclick="bupdate('${dto.num}')"> <input
								type='button' value='목록' onclick="blist()">
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

