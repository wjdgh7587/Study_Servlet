<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>페이퍼컴페니</title>
<link href="resource/css/style.css" rel="stylesheet">
<link href="resource/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/bootstrap-3.3.2/css/bootstrap-theme.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- 부트스트랩 스크립트  -->
	<script src="https://kit.fontawesome.com/bdd998710e.js"
		crossorigin="anonymous"></script>
	<script src="resource/js/jquery-3.5.1.min.js" type="text/javascript"></script>
	<script src="resource/bootstrap-3.3.2/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!-- Header start  -->
	<header class="header">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> <i class="far fa-building"></i></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example">

					<p class="navbar-text">PaperCompany</p>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">메뉴1</a></li>
						<li><a href="#">메뉴2</a></li>
						<li class="nav3"><a href="#">메뉴3</a></li>
						<li><a href="<%=request.getContextPath()%>/mInsert.jsp">회원가입</a></li>
						<li><a href="#">로그인</a></li>

					</ul>
				</div>

			</div>
		</nav>
	</header>

	<!-- Header End  -->


	<!-- SIdebar start -->
	<div>
		<div class="col-lg-2">
			<h3 class="my-4 text-center">Category</h3>
			<div class="list-group mb-4">
				<a
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">게시판1</a>
				<a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판2</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판3</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판4</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판5</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판6</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판7</a> <a href="#"
					class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
					게시판8</a>

			</div>
		</div>

		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="jumbotron" style="margin: 0;">
						<h1>Hello, world!</h1>
						<p>...</p>
						<p>
							<a class="btn btn-primary btn-lg" href="#" role="button">Learn
								more</a>
						</p>
					</div>
					<div class="carousel-caption">설명문구입니다.</div>
				</div>
				<div class="item">
					<div class="jumbotron" style="margin: 0;">
						<h1>Hello, world!</h1>
						<p>...</p>
						<p>
							<a class="btn btn-primary btn-lg" href="#" role="button">Learn
								more</a>
						</p>
					</div>
					<div class="carousel-caption">설명문구입니다.</div>
				</div>

			</div>
		</div>
	</div>
<!-- sidebar end -->

	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="resource/img/doornot.png" alt="...">
				<div class="caption">
					<h3>회원가입페이지</h3>
					<p>...</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="resource/img/doornot.png" alt="...">
				<div class="caption">
					<h3>회원가입페이지</h3>
					<p>...</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="resource/img/doornot.png" alt="...">
				<div class="caption">
					<h3>회원가입페이지</h3>
					<p>...</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer Start -->
	<footer>
		<div
			style="margin-top: 20px; border-top: 1px solid #777; padding: 15px;"
			class="text-center">Copyrights © 2020 PaperCompany Wansan-gu
			Somewhere 7-ga</div>
	</footer>
	<!-- Footer End  -->
</body>
</html>