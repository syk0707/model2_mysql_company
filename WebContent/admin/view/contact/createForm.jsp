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
		alert("회사명을 입력해주세요");
		f.subject.focus();
		
		return false;
		
	}if(elClickedObj.email.value==""){
		alert("이메일을 입력해주세요");
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
                    <h1 class="page-header">연락처 입력</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            연락처를 입력해주세요.
                        </div>
									<FORM name='frm' 
										  method='POST' 
										  action='./createProc.do'
										  onsubmit="return submitContents(this)"
										  >
                        <div class="panel-body">
                            <div class="row">
                                	<div class="col-lg-8">
                                        <div class="form-group">
                                            <label>회사명</label>
                                            <input type="text" name="name" class="form-control" placeholder="회사명을 입력해주세요(필수)" required required data-validation-required-message="회사명을 입력해주세요">
                                        </div>
                                        <div class="form-group">
                                            <label>이메일</label>
                                            <input type="email" name="email" class="form-control" placeholder="이메일을 입력해주세요(필수)" required>
                                        </div>
                                        <div class="form-group">
                                            <label>내용 (선택 입력사항. 한글기준 1000자 이후의 문자는 저장이 안됩니다.)</label>
                                            <textarea name="content" id="content" class="form-control"></textarea>
                                            
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
$(document).ready(function() {
    $('#content').on('keyup', function() {
        if($(this).val().length > 4000) {
            $(this).val($(this).val().substring(0, 4000));
        }
    });
});
</script>

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
