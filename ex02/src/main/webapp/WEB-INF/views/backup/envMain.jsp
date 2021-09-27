<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kor">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<meta charset="UTF-8">
    <meta name="author" content="webstoryboy">
    <meta name="description" content="웹 표준을 준수한 사이트 예제입니다.">
    <meta name="keywords" content="웹스토리보이, 웹표준, 웹접근성, 사이트 만들기">
    <meta name="generator" content="brakets">
    <title>WEBSTROYBOY SITE</title>

    <!-- CSS STYLE -->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/slick.css">
    <link rel="stylesheet" href="/resources/css/lightgallery.css">
        
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <title>Hello, world!</title>
  </head>
  <body>
  <div id="header">
            <div class="container">
                <div class="header">
                    <div class="header-menu">
                        <a href="https://wiss.tistory.com">Desinger</a>
                        <a href="https://webstoryboy">Publisher</a>
                        <a href="https://www.youtube.com/channel/UCsvQSv7EeCMHyYb9ENKAJZw">Youtube</a>
                    </div>
                    <!-- //헤더 메뉴 -->
                    <div class="header-tit">
                        <h1>Professional Publisher & Designer</h1><br>
                        <a href="https://webstoryboy.co.kr">webstoryboy.co.kr</a>
                    </div>
                    <!-- //헤더 타이틀 -->

                    <!-- 이미지를 표현하는 방법
                        1. img 태그로 표현(의미가 있을 때 / alt 태그 - 대체 문자 표현
                        2. background 속성으로 표현(의미가 없을 때) - 대체 문자 X
                        3. 이미지를 background 속성 - 웹 표준 준수하기 위해서는 
                            가상으로 대체 문자를 만들어줌(IR 효과)
                            이미지 스프라이트 효과
                    -->
                    <div class="header-icon">
                        <a href="#" class="icon1"><span class="ir_pm">icon1</span></a>
                        <a href="#" class="icon2"><span class="ir_pm">icon2</span></a>
                        <a href="#" class="icon3"><span class="ir_pm">icon3</span></a>
                        <a href="#" class="icon4"><span class="ir_pm">icon4</span></a>
                    </div>
                    <!-- //헤더 아이콘-->
                </div>
            </div>
        </div>
        <!-- //header -->
  	<br>
  	
  	
  	<!--card group  -->
  	<div class="px-5">
  	<div class="card-deck m-5">
	  <div class="card">
	    <img class="card-img-top" src="/resources/img/banner_link1.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">Card title</h5>
	      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="/resources/img/banner_link2.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">Card title</h5>
	      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="/resources/img/banner_link3.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">Card title</h5>
	      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
	      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	    </div>
	  </div>
	</div>
	</div>
	<!--/card group  -->
   <br>
   <div class="px-5">
   <div class="carousel-item">
			  <img src="/resources/img/gallery01.jpg" alt="slide1">
			  <div class="carousel-caption d-none d-md-block">
			    <h5>slide1</h5>
			    <p>slide1</p>
			  </div>
			</div>
   <h1 class="text-center display-3">Display 3</h1>
   <!--notice grid -->
   <div class="row d-flex p-2 justify-content-around m-5 ">
		<div class="col-sm p-2 ml-3 h-75">
			<div id="carouselExampleIndicators" class="carousel slide h-75" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="/resources/img/gallery01.jpg" alt="First slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="/resources/img/gallery02.jpg" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="/resources/img/gallery03.jpg" alt="Third slide">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<div class="col-sm text-primary p-2">
			<ul class=" list-group">
			  <li class="list-group-item disabled">Cras justo odio</li>
			  <li class="list-group-item">Dapibus ac facilisis in</li>
			  <li class="list-group-item">Morbi leo risus</li>
			  <li class="list-group-item">Porta ac consectetur ac</li>
			  <li class="list-group-item">Vestibulum at eros</li>
			  <li class="list-group-item">Porta ac consectetur ac</li>
			  <li class="list-group-item">Vestibulum at eros</li>
			</ul>
		</div>
		<div class="col-sm text-primary p-2">
			<ul class=" list-group">
			  <li class="list-group-item disabled">Cras justo odio</li>
			  <li class="list-group-item">Dapibus ac facilisis in</li>
			  <li class="list-group-item">Morbi leo risus</li>
			  <li class="list-group-item">Porta ac consectetur ac</li>
			  <li class="list-group-item">Vestibulum at eros</li>
			  <li class="list-group-item">Porta ac consectetur ac</li>
			  <li class="list-group-item">Vestibulum at eros</li>
			</ul>
		</div>
	</div>
	</div>
   <!--/notice grid -->
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
  <div id="footer">
            <div class="container">
                <h2 class="ir_su">푸터 영역</h2>
                <div class="footer">
                    <ul>
                        <li><a href="#">사이트 도움말</a></li>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영규칙</a></li>
                        <li><a href="#"><strong>개인정보취급방침</strong></a></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">게시중단요청 서비스</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                    <address>
                        Copyright©webstoryboy.co.kr All Right Rederved
                    </address>
                    <div class="w3c">
                        <a href="http://validator.w3.org/check?uri=referer">
                            <img src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" height="31" width="88" />
                        </a>
                        <a href="http://jigsaw.w3.org/css-validator/check/referer">
                            <img style="border:0;width:88px;height:31px" src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="올바른 CSS입니다!" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //footer -->
    </div>
    <!-- //wrap -->

    <!-- layer popup-->
    <div id="layer">
        <img src="/resources/img/webstandard1.jpg" alt="웹표준 사이트">
        <a href="#" class="close">Close</a>
    </div>
</html>