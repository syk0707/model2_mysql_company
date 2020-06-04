<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.kmmanufacture.*, model.kmbbs.*, utility.*"%>
<%@ include file="/ssi/ssi.jsp" %>
<head>
<title>${producttype}</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="${root}/js/jquery.ae.image.resize.js"></script>

    <script>
    (function($) { 
	  $( ".resize" ).aeImageResize({ height: 360, width: 270 });
    })(jQuery);
</script>
<script>
	function manuread(num) {
		var url = "./manuread.do";
		var producttype = encodeURIComponent("${param.producttype}");
		
		url += "?num=" + num; //js변수
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&producttype="+producttype; //js변수
		location.href = url;
	}
</script>
</head>
  <!-- Page Content -->
    <div class="container">
	<br><br>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">Home</a>
        </li>
        <li class="breadcrumb-item active">목록</li>
        <li class="breadcrumb-item active">${producttype}</li>
      </ol>

      <!-- Portfolio Section -->
      <h4>목록</h4>

      <div class="row" style="background-color: #c1c1c1;">
        <c:forEach var="dto" items="${list}">
        <div class="col-lg-4 col-sm-6 portfolio-item" >
          <div class="card h-100" style="background-color: #c1c1c1">
            <div class="card-header">
            <a href="javascript:manuread('${dto.num}')">
            <img class="img-responsive resize" src="${root}/view/storage/${dto.filename}"></a>
            </div>
            <div class="card-body">
              <h6>
                <a href="javascript:manuread('${dto.num}')">${dto.subject}</a>
              </h6>
              <p style="font-size:11px">${dto.subtitle}</p>
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
    