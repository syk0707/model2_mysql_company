<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>
<script>
	function manuread(num) {
		var url = "./main/manuread.do";
		url += "?num=" + num; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&producttype=${param.producttype}"; //js변수
		location.href = url;
	}
</script>
  <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">가공목록
        <small>${producttype}</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">Home</a>
        </li>
        <li class="breadcrumb-item active">가공목록</li>
        <li class="breadcrumb-item active">${producttype}</li>
      </ol>

      <!-- Portfolio Section -->
      <h3>제품소개</h3>

      <div class="row">
        <c:forEach var="dto" items="${list}">
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="javascript:manuread('${dto.num}')"><img class="card-img-top" src="${root}/view/storage/${dto.filename}" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="javascript:manuread('${dto.num}')">${dto.subject}</a>
              </h4>
              <p class="card-text">${dto.subtitle}</p>
            </div>
          </div>
        </div>
		</c:forEach>
      </div>
      <!-- /.row -->

      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
			${paging}
        </li>
      </ul>

    </div>
    <!-- /.container -->
    