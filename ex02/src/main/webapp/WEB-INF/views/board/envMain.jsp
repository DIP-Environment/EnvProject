<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="webstoryboy">
    <meta name="description" content="웹 표준을 준수한 사이트 예제입니다.">
    <meta name="keywords" content="웹표준, 웹접근성, 샘플사이트">
    <meta name="generator" content="brackets">
    <title>WEBSTANDARD SITE</title>
    
    <!-- style -->
    <link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/lightgallery.css">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <%@include file="../includes/envHeader.jsp"%>
</head>
	
<body>
    
    
    <div id="wrap">
        <div id="header" role="header">
            <div class="container">
                <div class="header">
                
                    <div class="header-menu">
                    	
                        <a href="#" style="font-size:medium; ">로그인</a>
                        <a href="#" style="font-size:medium; ">회원가입</a>
                        
                    </div>
                    <!-- //헤더 메뉴 -->
                    <!-- <div class="header-tit">
                    	<br>
                        
                        <a href="#"><img class="text-white" alt="logo" src="/resources/img/envLogo.png"></a>
                    </div> -->
                    <!-- //헤더 타이틀 -->
            <!--         <div class="header-icon">
                        <a href="#" class="icon1"><span class="ir_pm">icon1</span></a>
                        <a href="#" class="icon2"><span class="ir_pm">icon2</span></a>
                        <a href="#" class="icon3"><span class="ir_pm">icon3</span></a>
                       
                    </div> -->
                    <!-- //헤더 아이콘 -->
                </div>
            </div>
        </div>
        <!-- //header -->
        
        <div id="contents">
            
            <!-- //cont_tit -->
            
            <div id="cont_ban">
                <div class="container">
                    <div class="ban">

                        <div><a id="img1" href="#"><img id="img1" src="/resources/img/banner1.png" alt=""></a></div>
                        <div><a href="#"><img src="/resources/img/banner2.png" alt=""></a></div>
                        <div><a href="#"><img src="/resources/img/banner3.png" alt=""></a></div>
                        <div><a href="#"><img src="/resources/img/banner4.png" alt=""></a></div>
                        <div><a href="#"><img src="/resources/img/banner5.png" alt=""></a></div>
                        
                        
                    </div>
                </div>
            </div>
            <!-- //cont_ban -->
            
            <div id="cont_cont"  style="background-color:#fafafa;">
                <div class="container">
                    <div class="cont">
                        <div class="column col1">
                        	<br>
                            <h3><span class="ico_img ir_pm">아이콘1</span><em class="ico_tit">SAY and TIP</em></h3>
                            <p class="ico_desc"><br></p>
                            <!-- 게시판 -->
                            <div class="notice">
                                <h4>Say</h4>
                                <ul>
                                    <li><a href="#">뉴스1</a></li>
                                    <li><a href="#">뉴스2</a></li>
                                    <li><a href="#">뉴스3</a></li>
                                    <li><a href="#">뉴스4</a></li>
                                    <li><a href="#">뉴스5</a></li>
                                </ul>
                                <a href="#" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                            <!-- //게시판 -->
                            
                            <!-- 게시판 유형2 -->
                            <div class="notice2">
                                <h4>Tip</h4>
                                <ul>
                                    <li><a href="#">팁1</a><span>2018.11.16</span></li>
                                    <li><a href="#">팁2</a><span>2018.11.16</span></li>
                                    <li><a href="#">팁3</a><span>2018.11.16</span></li>
                                    <li><a href="#">팁4</a><span>2018.11.16</span></li>
                                    <li><a href="#">팁5</a><span>2018.11.16</span></li>
                                </ul>
                                <a href="#" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                            <!-- //게시판 유형2 -->
                        </div>
                        <!-- //col1 -->
                        <div class="column col2">
                        	<br>
                            <h3><span class="ico_img ir_pm">아이콘2</span><em class="ico_tit">TALK</em></h3>
                            <p class="ico_desc"><br></p>
                            <!-- 게시판 유형3 -->
                            <div class="notice3">
                                <h4>HTML Reference</h4>
                                <ul>
                                    <li>
                                        <a href="#">
                                            <img src="/resources/img/notice01.jpg" alt="이미지1">
                                            <strong>[Talk1]</strong> <table>
                                            <span> 나의 이야기</span></table>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/resources/img/notice02.jpg" alt="이미지2">
                                            <b>[Talk2] </b><div>
                                            <span> 나의 이야기</span></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/resources/img/notice03.jpg" alt="이미지3">
                                            <strong>[Talk3] </strong><dl>
                                            <span> 나의 이야기</span></dl>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/resources/img/notice04.jpg" alt="이미지4">
                                            <b>[Talk4] </b><em>
                                            <span> 나의 이야기</span></em>
                                        </a>
                                    </li>
                                </ul>
                                <a href="#" class="more ir_pm" title="더보기">더보기</a>
                            
                            </div>
                            <!-- //게시판 유형3 -->
                        </div>
                       
                        <!-- //col2 -->
                        <div class="column col3">
                        	<br>
                            <h3><span class="ico_img ir_pm">아이콘3</span><em class="ico_tit">지구의 모습</em></h3>
                            <p class="ico_desc"><br></p>
                            <!-- 로그인 -->
                            
                            <!-- 갤러리 -->
                            <div class="gallery">
                                <h4>지구 감상</h4>
<!--
                                <div class="gallery_btn">
                                    <ul>
                                        <li class="gb_icon1"><a href="#"><span class="ir_pm">시작</span></a></li>
                                        <li class="gb_icon2"><a href="#"><span class="ir_pm">정지</span></a></li>
                                        <li class="gb_icon3"><a href="#"><span class="ir_pm">이전이미지</span></a></li>
                                        <li class="gb_icon4"><a href="#"><span class="ir_pm">다음이미지</span></a></li>
                                    </ul>
                                </div>
-->
                                <!-- <div class="gallery_btn">
                                    <button class="gb_icon1 play"><span class="ir_pm">Play</span></button>
                                    <button class="gb_icon2 pause"><span class="ir_pm">Pause</span></button>
                                    <button class="gb_icon3 prev"><span class="ir_pm">prev</span></button>
                                    <button class="gb_icon4 next"><span class="ir_pm">next</span></button>
                                </div> -->
                                
                                <div class="gallery_img">
<!--
                                    <ul>
                                        <li><a href="#"><img src="/resources/img/gallery01.jpg" alt="갤러리1"></a></li>
                                        <li><a href="#"><img src="/resources/img/gallery02.jpg" alt="갤러리2"></a></li>
                                        <li><a href="#"><img src="/resources/img/gallery03.jpg" alt="갤러리3"></a></li>
                                        <li><a href="#"><img src="/resources/img/gallery04.jpg" alt="갤러리4"></a></li>
                                        <li><a href="#"><img src="/resources/img/gallery05.jpg" alt="갤러리5"></a></li>
                                    </ul>
-->
                                    <!-- <div><a href="#"><img src="/resources/img/gallery01.jpg" alt="갤러리1"></a></div>
                                    <div><a href="#"><img src="/resources/img/gallery02.jpg" alt="갤러리2"></a></div>
                                    <div><a href="#"><img src="/resources/img/gallery03.jpg" alt="갤러리3"></a></div>
                                    <div><a href="#"><img src="/resources/img/gallery04.jpg" alt="갤러리4"></a></div>
                                    <div><a href="#"><img src="/resources/img/gallery05.jpg" alt="갤러리5"></a></div> -->
                                    
                                     
                                     <iframe width="600" height="220" src="https://www.youtube.com/embed/SMKPKGW083c?autoplay=1&mute=1&start=20" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                     
                                </div>
                            </div>
                            <!-- //갤러리 -->
                        </div>
                        <!-- //col6 -->
                    </div>
                </div>
            </div>
            <!-- //cont_cont -->
        </div>
        <!-- //contents -->
        
        <%@include file="../includes/envFooter.jsp"%>

    </div>
    <!-- //wrap -->
    
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/resources/js/slick.min.js"></script>
    <script src="/resources/js/lightgallery.min.js"></script>
    <script src="/resources/js/lightgallery-all.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>


</html>