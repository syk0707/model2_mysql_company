<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "model.kmcontact.*"%>
<%@ include file = "/ssi/ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function bdel(){
	var url = "./deleteProc.do";
	url += "?num=${dto.num}";
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
								<TH>회사명</TH>
								<TD>${dto.name}</TD>
							</TR>
							<TR>
								<TH>내용</TH>
								<TD>${dto.content}</TD>
							</TR>
							<TR>
								<TH>등록날짜</TH>
								<TD>${dto.regdate}</TD>
							</TR>
							<TR>
								<TH>아이피</TH>
								<TD>${dto.ip}</TD>
							</TR>
						</TABLE>
							<input type='button' value='삭제' onclick="bdel()">
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

