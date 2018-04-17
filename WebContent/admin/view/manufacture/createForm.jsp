<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file = "/ssi/ssi.jsp" %>

<!DOCTYPE html> 
<html> 
<head> 
<script>
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("ir1").value를 이용해서 처리한다.
    if(elClickedObj.name.value==""){
		alert("이름을 입력하세요");
		f.name.focus();
		
		return false;
	}
	if(elClickedObj.subject.value==""){
		alert("제목을 입력하세요");
		f.subject.focus();
		
		return false;
		
	}
	if(elClickedObj.passwd.value==""){
		alert("비번을 입력하세요");
		f.passwd.focus();
		
		return false;
	}
	if(elClickedObj.content.value==""){
		alert("내용을 입력하세요");
		f.content.focus();
		
		return false;
	}
    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
</script>
</head> 
<!-- *********************************************** -->
<body>
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
									<FORM name='frm' 
										  method='POST' 
										  action='./createProc.do'
										  onsubmit="return submitContents(this)"
										  enctype="multipart/form-data">
                        <div class="panel-body">
                            <div class="row">
                                	<div class="col-lg-8">
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
                                            <label>부제</label>
                                            <input type="text" name="subtitle" class="form-control" placeholder="부제를 입력하세요">
                                        </div>
                                        <div class="form-group">
                                            <label>내용</label>
                                            <textarea name="content" id="content" class="form-control"></textarea>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>대표사진</label>
                                            <input type="file" name="filename">
                                        </div>
                                        <div class="form-group">
                                            <label>가공분류</label>
                                            <select name = "producttype" class="form-control">
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
                                        <div class="form-group">
                                            <label>비밀번호</label>
                                            <input type="password" name="passwd" class="form-control">
                                        </div>
                                        <input type="submit" class="btn btn-default" value="전송"/>
                                        <input type="reset" class="btn btn-default" value="재작성"/>
                                </div>
                                
                                <div class="col-lg-4">
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                                    </form>
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

<script type="text/javascript">

var oEditors = [];

nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "content",
    sSkinURI: "${root}/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>

</html>
