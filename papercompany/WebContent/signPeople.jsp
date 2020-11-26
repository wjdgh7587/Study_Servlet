<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타테그 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>페이퍼컴페니</title>
<link href="resource/css/style.css" rel="stylesheet">
<link href="resource/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/bootstrap-3.3.2/css/bootstrap-theme.min.css"
	rel="stylesheet">

</head>
<body>
	<h1 class="text-center">회원가입</h1>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<div class="panel panel-default">
				<div class="panel-body">

					<div class="form-group">
						<label class="control-label" for="">사원번호</label> <input
							id="sign_id" type="number" class="form-control" placeholder="아이디">
						<button id="id_check">중복확인</button>
					</div>
					<div class="form-group">
						<label class="control-label" for="">패스워드</label> <input
							id="sign_pw" type="password" class="form-control"
							placeholder="비밀번호">
					</div>
					<div class="form-group">
						<label class="control-label" for="">비밀번호 확인</label> <input
							id="sign_pw_re" type="password" class="form-control"
							placeholder="비밀번호 확인">
					</div>

					<div class="form-group">
						<label class="control-label" for="">증명사진 업로드</label> <input
							id="sign_photo" type="file" class="form-control"
							placeholder="증명사진">
					</div>
					<div class="form-group">
						<label class="control-label" for="">사원명</label> <input
							id="sign_name" type="text" class="form-control" placeholder="사원명">
					</div>
					<div class="form-group">
						<label class="control-label" for="">영문사원명</label> <input
							id="sign_e_name" type="text" class="form-control"
							placeholder="영문사원명">
					</div>
					<div class="form-group">
						<label class="control-label" for="">주민등록번호</label> <input
							id="sign_identy_number" type="text" class="form-control"
							placeholder="주민등록번호">
					</div>
					<div class="form-group">
						<label class="control-label" for="">휴대전화번호</label> <input
							id="sign_number" type="text" class="form-control"
							placeholder="휴대전화번호">
					</div>
					<div class="form-group">
						<label class="control-label" for="">E-mail</label> <input
							id="sign_email" type="email" class="form-control"
							placeholder="이메일">
					</div>
					<button type="button" class="btn btn-lg btn-warning btn-block"
						id="logingBtn">회원가입</button>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="resource/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript"
		src="resource/bootstrap-3.3.2/js/bootstrap.min.js"></script>

	<script type="text/javascript">

	//유효성검사
		$(function() {
			

			var sign_id = $('#sign_id');
			var sign_pw = $('#sign_pw');
			var sign_pw_re = $('#sign_pw_re');
			var sign_name = $('#sign_name');
			var sign_e_name = $('#sign_e_name');
			var sign_identy_number = $('#sign_identy_number');
			var sign_btn = $('#sign_btn');
			
	
			

			$('#logingBtn').click(function() {

				if (sign_id.val() == "") {
					alert('사원번호를 입력해주세요!.');
					sign_id.focus();
					return;
				}
				if (sign_id.val().length <= 8) {
					alert('사원번호 길이가 짧습니다.(최소8자리 이상)');
					sign_id.focus();
					return;
				}
				if (sign_pw.val() == "") {
					alert('비밀번호를 입력해주세요!.');
					sign_pw.focus();
					return;
				}
				if (sign_pw_re == sign_pw.val()) {
					alert('비밀번호를 확인해주세요!.');
					sign_pw_re.focus();
					return;
				}
				if (sign_name == "") {
					alert('이름를 입력해주세요!.');
					sign_name.focus();
					return;
				}
				if (sign_e_name == "") {
					alert('영문 이름을 입력해주세요!');
					sign_e_name.focus();
					return;
				}
				if (sign_identy_number == "") {
					alert("주민등록번호를 확인하세요!");
					sign_identy_number.focus();
					return;
				}
				
				
				
			});
			//아이디 중복 체크 Ajax
			$('#id_check').click(function(){				
				var request = $.ajax({
					//var sign_id = $('#sign_id');
					url: "<%= request.getContextPath() %>/response_test.jsp", 
					method: "POST",
					data: { sign_id : sign_id }, 
					dataType: "json" 
				});
				request.done(function( data ) {
					console.log(data);
					if(data.result == '1'){
						alert('사용 불가능합니다.');
					}else{
						alert('사용이 가능합니다.');
					}
				});
				request.fail(function( jqXHR, textStatus ) {
					alert( "Request failed: " + textStatus );
				});
				
			});
		});
	</script>
</body>
</html>