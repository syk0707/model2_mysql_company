<%@ page contentType="text/html; charset=UTF-8" %> 
<% String root = request.getContextPath(); %>
<%@ include file="/ssi/ssi.jsp" %>

    <!-- Footer -->
    <footer class="py-5" style="background-color: #a1a4a8;">
      <div class="container">
		 <p class="m-0 text-center text-black"><img src="${root}/images/logo.png"><br>
        대표: 정의탁 || 주소: 서울 영등포구 문래동4가 31-31 || 사업자등록번호: 107-39-87462
        <br>
		대표번호: 02-2634-5944 || FAX: 02-2675-8192 || 이메일: kmgear@naver.com
		<br>
		모든 기어 관련 문의, 친절히 상담해드리겠습니다. 감사합니다.
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="<%=root %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>

</html>
