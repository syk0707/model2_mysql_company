<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function incheck(){
	var f = document.frm;
	if(f.name.value==""){
		alert("이름을 입력하세요");
		f.name.focus();
		return;
	}
	if(f.title.value==""){
		alert("제목을 입력하세요");
		f.title.focus();
		return;
	}
	if(f.content.value==""){
		alert("내용을 입력하세요");
		f.content.focus();
		return;
	}
	if(f.passwd.value==""){
		alert("비번을 입력하세요");
		f.passwd.focus();
		return;
	}
	f.submit();
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
<DIV class="title">수정</DIV>
 
<FORM name='frm' 
	  method='POST' 
	  action='./updateProc.do'
	  enctype="multipart/form-data">
	  <input type ="hidden" name ="num" value ="${dto.num}">
	  <input type ="hidden" name ="col" value ="${param.col}">
	  <input type ="hidden" name ="word" value ="${param.word}">
	  <input type ="hidden" name ="nowPage" value ="${param.nowPage}">
	  <input type ="hidden" name ="oldfile" value ="${dto.filename}">
  <TABLE>
    <TR>
      <TH>성명</TH>
      <TD><input type="text" name="name" value="${dto.name}"></TD>
    </TR>
    <TR>
      <TH>제목</TH>
      <TD><input type="text" name="subject" value="${dto.subject}"></TD>
    </TR>
    <TR>
      <TH>내용</TH>
      <TD><textarea rows="10" cols="45" name="content">${dto.content}</textarea></TD>
    </TR>
    <TR>
      <TH>비밀번호</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
    <TR>
      <TH>파일명</TH>
      <TD><input type="file" name="filename">${dto.filename}</TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='button' value='수정' onclick="incheck()">
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
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
