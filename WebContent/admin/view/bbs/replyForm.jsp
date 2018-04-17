<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import = "model.kmbbs.*" %>
<%@ include file="/ssi/ssi.jsp" %>
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 	      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
						<DIV class="title">답변</DIV>
						 
						<FORM name='frm' 
							  method='POST' 
							  action='./replyProc.do'
							  onsubmit="return incheck(this)"
							  enctype="multipart/form-data">
						
						<input type="hidden" name="num" value="${dto.num}">
						<input type="hidden" name="col" value="${param.col}">
						<input type="hidden" name="word" value="${param.word}">
						<input type="hidden" name="ref" value="${dto.ref}">
						<input type="hidden" name="indent" value="${dto.indent}">
						<input type="hidden" name="ansnum" value="${dto.ansnum}">
						<input type="hidden" name="nowPage" value="${param.nowPage}">
						
						  <TABLE>
						    <TR>
						      <TH>성명</TH>
						      <TD><input type="text" name="name"></TD>
						    </TR>
						    <TR>
						      <TH>제목</TH>
						      <TD><input type="text" name="subject" value="${dto.subject}"></TD>
						    </TR>
						    <TR>
						      <TH>내용</TH>
						      <TD><textarea rows="10" cols="45" name="content"></textarea></TD>
						    </TR>
						    <TR>
						      <TH>비밀번호</TH>
						      <TD><input type="password" name="passwd"></TD>
						    </TR>
						    <TR>
						      <TH>파일명</TH>
						      <TD><input type="file" name="filename"></TD>
						    </TR>
						  </TABLE>
						  
						  <DIV class='bottom'>
						    <input type='submit' value='답변'>
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
