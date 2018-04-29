<%@page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp"%>
    <!-- Page Content -->
    <div class="container">
		<br><br>
      <!-- Page Heading/Breadcrumbs -->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${root}/index.do">홈</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">회사소개</a>
        </li>
        <li class="breadcrumb-item active">오시는 길</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <a href="${root }/main/ceo.do" class="list-group-item">CEO인사말</a>
            <a href="${root }/main/map.do" class="list-group-item">오시는길</a>
          </div>
        </div>
        <!-- Map Column -->
        <div class="col-lg-5 mb-4">
          <!-- Embedded Google Map -->
		          <iframe
		  width="360"
		  height="270"
		  frameborder="0" style="border:0"
		  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB1g5EiwyP2I7Eb0SoizibNfqlubQnBxTs
		    &q=금명정밀기어" allowfullscreen>
		</iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>연락처</h3>
          <p>
            주소 : 서울시 영등포구 도림로141다길 15-1
            <br>(문래동4가 31-31)
            <br>
          </p>
          <p>
            전화번호 : (02) 2634-5944
          </p>
          <p>
            FAX : (02) 2675-8192
          </p>
          <p>
            H.P : (010) 4348-4350
          </p>
          <p>
            E-mail :
            <a href="mailto:kmgear@naver.com">kmgear@naver.com
            </a>
          </p>
          <p>
            모든 기어 관련 문의, 친절히 상담해드리겠습니다. 감사합니다.
          </p>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->

    </div>
    <!-- /#wrapper -->