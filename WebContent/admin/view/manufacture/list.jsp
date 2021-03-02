<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, model.kmmanufacture.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp"%>
<!-- total을 선택하면 col,word 값 없이 넘긴다. checknull() null 값을 0으로 바꾼다. checknull static 메소드 매개변수-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>

	function fileDown(filename) {
		var url = "${root}/download";
		url += "?filename=" + filename;
		url += "&dir=/bbs/storage"
		location.href = url;
	}
	function bcreate() {
		var url = "./createForm.do";
		location.href = url;
	}

	function read(num) {
		var url = "./read.do";
		url += "?num=" + num; //js변수
		url += "&col=${col}";
		url += "&word=${word}"; //jsp 변수
		url += "&nowPage=${nowPage}";
		location.href = url;
	}
</script>
<!-- JSP 자바 등에서 사용하려면 표현식을 써 주어야 한다. -->


</head>
<!-- *********************************************** -->
<body>
	<!-- *********************************************** -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-10">
						<DIV class="search">
							<form action="./list.do" method="post">
								<select name="col">
									<!-- 검색할 Column -->
									<option value="name" <c:if test="${col=='name'}">selected</c:if>>성명</option>
									<option value="subject" <c:if test="${col=='subject'}">selected</c:if>>제목</option>
									<option value="content"
										<c:if test="${col=='content'}">selected</c:if>>내용</option>
									<option value="total" <c:if test="${col=='total'}">selected</c:if>>전체출력</option>
									<!-- 검색한 조건을 where절에 주고 가져온다. -->
								</select> <input type="search" name="word" value="${word}" required>
								<!-- 검색어 -->
								<button class="button">검색</button>
								<button class="button" onclick="bcreate()">가공 등록</button>
							</form>
						</DIV>
						<div class="container-fluid">
							<h2>
								<span class="glyphicon glyphicon-th-list"></span> 가공목록
							</h2>
							<TABLE class="table table-bordered">
								<thead>
									<TR>
										<TH>번호</TH>
										<TH>성명</TH>
										<TH>제목</TH>
										<TH>날짜</TH>
										<TH>조회수</TH>
									</TR>
								</thead>
								<c:choose>
									<c:when test="${empty list}">
										<tbody>
											<tr>
												<td colspan="5">등록된 글이 없습니다.</td>
											</tr>
										</tbody>
									</c:when>
									<c:otherwise>
										<c:forEach var="dto" items="${list}">
					
											<tbody>
												<tr>
													<td>${dto.num}</td>
													<td>${dto.name}</td>
													<td><c:if test="${dto.indent>0}">
															<c:forEach begin="1" end="${dto.indent}">
														    	&nbsp;&nbsp;
														    	<img src='${root}/images/re.jpg'>
															</c:forEach>
														</c:if> 
														
														<a href="javascript:read('${dto.num}')">${dto.subject}</a> <c:if
															test="${util:newimg(dto.regdate) }">
															<img src="${root}/images/new.gif">
														</c:if></td>
													<td>${dto.regdate}</td>
													<td>${dto.count}</td>
												</tr>
											</tbody>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</TABLE>
					
							<DIV class='bottom'>${paging}</DIV>
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

