<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>PaperCompany Webpage</title>
 	<!-- Css linked -->
    <link rel="stylesheet" href="resource/css/style.css" />
    <link rel="stylesheet" href="resource/css/categories.css" />
    <link href="resource/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resource/bootstrap-3.3.2/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet" />

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
		<div class="top">
            <nav class="navbar navbar-inverse">
                <!-- navbar brand logo -->
                <li class="nav navbar-brand">
                    <a href="index.html" class="logo">Paper Company</a>
                </li>
                <!-- navbar logo menu -->
                <ul class="nav navbar-nav">
                    <li><a href="index.html" class="navbar-nav home">HOME</a></li>
                    <li><a href="#" class="navbar-nav menu1">MENU 1</a></li>
                    <li><a href="#" class="navbar-nav menu2">MENU 2</a></li>
                </ul>
                <!-- navbar left menu -->
                <ul class="nav navbar-nav navbar-left">
                    <form class="navbar-form navbar-right">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                    </form>
                </ul>
                <!-- navbar right menu -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" class="sign-modal" data-toggle="modal" data-target="#modal_Sign">회원가입</a></li>
                    <li><a href="#">로그인</a></li>
                    <li>
                        <a href="#"> </a>
                    </li>
                </ul>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav"></ul>
                </div>
            </nav>
        </div>
        <!-- Modal for sign-up -->
        <div class="modal fade" id="modal_Sign" data-backdrop="static" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- modal header -->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span>×</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title">회원가입 페이지</h4>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <!-- Sign up form -->
                        <form action="#">
                            <label for="numberInputAccount">사원번호</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user fa" aria-hidden="true"></i>
                                </span>
                                <input type="number" class="form-control" id="account_number" placeholder="사원번호">
                            </div>
                            <button class="btn btn-danger" id="double_idcheck">아이디중복검사</button><br>

                            <label for="numberInputAccount">사원비밀번호</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-lock fa" aria-hidden="true"></i>
                                </span>
                                <input type="password" class="form-control" id="account_password" placeholder="사원비밀번호">
                            </div>

                            <label for="numberInputAccount">사원비밀번호 재확인</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-lock fa" aria-hidden="true"></i>
                                </span>
                                <input type="password" class="form-control" id="account_password_re"
                                    placeholder="사원비밀번호확인">
                            </div>

                            <label for="numberInputAccount">사원 이메일</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="far fa-envelope" aria-hidden="true"></i>
                                </span>
                                <input type="email" class="form-control" id="account_email" placeholder="사원이메일입력">
                            </div>
                            <button type="submit" class="btn btn-primary" id="sign_btn">회원가입</button>
                        </form>

                    </div>
                </div>
            </div>

        </div>
	</header>

	<!-- Header End  -->

   <!-- section column start -->
    <section id="blog-section" >
     <div class="container">
       <div class="row">
         <div class="col-lg-8">
           <div class="row">             
               <div class="col-lg-6 col-md-6">
             <aside>
                <img src="resource/img/1.jpg" class="img-responsive">
                <div class="content-title">
				<div class="text-center">
				<h3><a href="#">ID_NAME_USER_01</a></h3>
				</div>
				</div>
				<div class="content-footer">
				<img class="user-small-img" src="resource/img/1.jpg">
				<span style="font-size: 16px;color: #fff;">Jeongho Yun</span>
				<span class="pull-right">
				<a href="#" data-toggle="tooltip" data-placement="left" title="Comments"><i class="fa fa-comments" ></i> 30</a>
				<a href="#" data-toggle="tooltip" data-placement="right" title="Loved"><i class="fa fa-heart"></i> 20</a>                  
				</span>
                    <div class="user-ditels">
                    <div class="user-img"><img src="resource/img/2.jpg" class="img-responsive"></div>
                        <span class="user-full-ditels">
                        <h3>ID_NAME_USER_NAME</h3>
                        <p>페이퍼컴페니 영업 1부</p>
                        </span>
                        <div class="social-icon">
						<a href="#"><i class="fa fa-facebook" data-toggle="tooltip" data-placement="bottom" title="Facebook"></i></a>
						<a href="#"><i class="fa fa-twitter" data-toggle="tooltip" data-placement="bottom" title="Twitter"></i></a>
						<a href="#"><i class="fa fa-google-plus" data-toggle="tooltip" data-placement="bottom" title="Google Plus"></i></a>
						<a href="#"><i class="fa fa-youtube" data-toggle="tooltip" data-placement="bottom" title="Youtube"></i></a>
						<a href="#"><i class="fa fa-github" data-toggle="tooltip" data-placement="bottom" title="Github"></i></a>				
					</div>
                    </div>
				</div>
             </aside>
            </div>  
               <div class="col-lg-6 col-md-6">
             <aside>
                <img src="resource/img/1.jpg" class="img-responsive">
                <div class="content-title">
				<div class="text-center">
				<h3><a href="#">ID_NAME_USER_01</a></h3>
				</div>
				</div>
				<div class="content-footer">
				<img class="user-small-img" src="resource/img/1.jpg">
				<span style="font-size: 16px;color: #fff;">Mr Bootstrap</span>
				<span class="pull-right">
				<a href="#" data-toggle="tooltip" data-placement="left" title="Comments"><i class="fa fa-comments" ></i> 30</a>
				<a href="#" data-toggle="tooltip" data-placement="right" title="Loved"><i class="fa fa-heart"></i> 20</a>                  
				</span>
                    <div class="user-ditels">
                    <div class="user-img"><img src="resource/img/1.jpg" class="img-responsive"></div>
                        <span class="user-full-ditels">
                        <h3>ID_NAME_USER_NAME</h3>
                        <p>페이퍼컴페니 영업 부트스트랩 2부</p>
                        </span>
                        <div class="social-icon">
						<a href="#"><i class="fa fa-facebook" data-toggle="tooltip" data-placement="bottom" title="Facebook"></i></a>
						<a href="#"><i class="fa fa-twitter" data-toggle="tooltip" data-placement="bottom" title="Twitter"></i></a>
						<a href="#"><i class="fa fa-google-plus" data-toggle="tooltip" data-placement="bottom" title="Google Plus"></i></a>
						<a href="#"><i class="fa fa-youtube" data-toggle="tooltip" data-placement="bottom" title="Youtube"></i></a>
						<a href="#"><i class="fa fa-github" data-toggle="tooltip" data-placement="bottom" title="Github"></i></a>				
					</div>
                    </div>
				</div>
             </aside>
            </div>  
           
           </div>
          </div>
           

         <div class="col-lg-4">           
            <!-- categories area -->
             <div class="widget-sidebar">
              <h2 class="title-widget-sidebar">사원 카테고리</h2>
                 <button class="categories-btn">사원 음악</button>
                 <button class="categories-btn">사원 블로그</button>
                 <button class="categories-btn">사원 사진</button>
                 <button class="categories-btn">사진 항목</button>
             </div>               
            
               <div class="widget-sidebar">
                   <!-- 최근 포스트 내용 -->
                 <h2 class="title-widget-sidebar">Recent 사원 포스트</h2>
                   <div class="content-widget-sidebar">
                    <ul>
                     <li class="recent-post">
                        <div class="post-img">
                         <img src="resource/img/2.jpg" class="img-responsive">
                         </div>
                         <a href="#"><h5>포스트1.</h5></a>
                         <p><small><i class="fa fa-calendar" data-original-title="" title=""></i> 30 OCT 2020</small></p>
                        </li>
                        
                        
                        <li class="recent-post">
                        <div class="post-img">
                         <img src="resource/img/1.jpg" class="img-responsive">
                         </div>
                         <a href="#"><h5>포스트2.</h5></a>
                         <p><small><i class="fa fa-calendar" data-original-title="" title=""></i> 29 OCT 2020</small></p>
                        </li>

                    </ul>
                   </div>
                 </div>
             
             <div class="widget-sidebar">
              <h2 class="title-widget-sidebar">월별 포스트 리스트</h2>
                <div class="last-post">
                  <button class="accordion">21/4/2016</button>
                   <div class="panel">
                     <li class="recent-post">
                      <div class="post-img">
                       <img src="resource/img/1.jpg" class="img-responsive">
                        </div>
                       <a href="#"><h5></h5></a>
                      <p><small><i class="fa fa-calendar" data-original-title="" title=""></i> 30 Juni 2014</small></p>
                    </li>
                  <p>라라라라라랄</p>
                 </div>
                </div>                 
               
                
       
            
<div class="widget-sidebar">
 <h2 class="title-widget-sidebar">페이퍼컴페니 연락망</h2>   
<div class="input-group">
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
   
           </div>
         </div>
     
    </section>
    <!-- section column end -->



	 <!-- footer column start -->
    <footer>
        <div class="footer">
            <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                   
                  <div
			style="margin-top: 20px; border-top: 1px solid #777; padding: 15px;"
			class="text-center">Copyrights © 2020 PaperCompany Wansan-gu
			Somewhere 7-ga</div>
                    <div class="col-md-12">  
                        <h5>We are paperCompany</h5>                      
                        <ul class="list-unstyled quick-links">
                            <li><a href="#"><i
                                        class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="#"><i
                                        class="fa fa-angle-double-right"></i>About</a></li>                 
                        </ul>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-xs-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="#"><i
                                        class="fa fa-facebook"></i></a></li>                          
                            <li class="list-inline-item"><a href="#"><i
                                        class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i
                                        class="fa fa-google-plus"></i></a></li>
                      
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white"> 
                                              
                        <p class="h6">© All right Reversed.<a class="text-green ml-2" href="#">PaperCompany</a></p>
                    </div>
                    <hr>
                </div>
                                
            </div>
        </div>
    </footer>
    <!-- footer column end -->

    <script src="resource/js/validity_check.js"></script>
    <script src="resource/js/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script src="resource/js/bootstrap-3.3.2/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/bdd998710e.js" crossorigin="anonymous"></script>
</body>
</html>