<%@page contentType="text/html; charset=UTF-8" %>

<%request.setCharacterEncoding("UTF-8");
	String root = request.getContextPath();%>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">가공 입력</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            가공 정보 입력
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-8">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>관리자 확인</label>
                                            <p class="form-control-static">Y</p>
                                        </div>
                                        <div class="form-group">
                                            <label>글쓴이</label>
                                            <input type="text" name="name" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>제목</label>
                                            <input type="text" name="subject" class="form-control" placeholder="제목을 입력하세요">
                                        </div>
                                        <div class="form-group">
                                            <label>내용</label>
                                            <textarea name="ir1" id="ir1" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>비밀번호</label>
                                            <input type="password" name="passwd" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>대표사진</label>
                                            <input type="file" name="filename">
                                        </div>
                                        <div class="form-group">
                                            <label>가공분류</label>
                                            <select class="form-control">
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
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-default">전송</button>
                                        <button type="reset" class="btn btn-default">재작성</button>
                                    </form>
                                </div>
                                
                                <div class="col-lg-4">
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<%=root%>/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=root%>/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=root%>/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=root%>/admin/dist/js/sb-admin-2.js"></script>

</body>
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
</html>
