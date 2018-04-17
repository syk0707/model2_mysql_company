<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); %> 
 
<%
	String root = request.getContextPath();
%> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 

<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=root %>/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head> 
 
<!-- *********************************************** -->
<body>
 
<DIV class="container">
<div id="center">
<h3>글쓰기</h3>
<br>
</div> 
<FORM name='frm' method='POST' 
 enctype="multipart/form-data" 
 action='./createProc.do'>
<div>

  <TABLE class='table'>
    <TR>
      <TH>글쓴이</TH>
      <TD><input type="text" name="name"></TD>
    </TR>
    <TR>
      <TH>제목</TH>
      <TD><input type="text" name="subject" size="90"></TD>
    </TR>
    <TR>
      <TH>내용</TH>
      <TD><textarea name="ir1" id="ir1"></textarea></TD>
    </TR>
    <TR>
      <TH>비밀번호</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
    <TR>
      <TH>대표사진</TH>
      <TD><input type="file" name="filename"></TD>
    </TR>
    <TR>
      <TH>가공분류</TH>
      <TD><select>
  <option value="기어연마치연마">기어연마·치연마</option>
  <option value="챔퍼링라운드">기어치절·챔퍼링라운드</option>
  <option value="챔퍼링앵글">기어치절·챔퍼링앵글</option>
  <option value="치절스퍼">기어치절스퍼기어</option>
  <option value="치절헬리컬">기어치절헬리컬기어</option>
  <option value="치절체인">기어치절체인기어</option>
  <option value="치절랙크">기어치절랙크기어</option>
  <option value="치절인벌류트">기어치절인벌류트기어</option>
  <option value="치절내치">기어치절내치기어</option>
  <option value="치절웜">기어치절웜기어</option>

</select></TD>
    </TR>
  </TABLE>
  <DIV class="row" id = "center">
    <input type='submit' value='등록' class="btn-info">
    <input type='button' value='목록' onclick="location.href='./list.do'" class="btn-info">
  </DIV>
  </div>
</FORM>
  </DIV>
 	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>
<script type="text/javascript">

var oEditors = [];

nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    sSkinURI: "<%=root%>/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>
<script>
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("ir1").value를 이용해서 처리한다.
    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
</script>
</body>
<!-- *********************************************** -->
</html> 
