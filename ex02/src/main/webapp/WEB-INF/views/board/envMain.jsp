<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko" style="overflow-y:hidden; overflow-y:scroll;">
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

                        <div><a id="img1" href="#"><img src="/resources/img/banner1.png" alt=""></a></div>
                        <div><a id="img2" href="#"><img src="/resources/img/banner2.png" alt=""></a></div>
                        <div><a id="img3" href="#"><img src="/resources/img/banner3.png" alt=""></a></div>
                        <div><a id="img4" href="#"><img src="/resources/img/banner4.png" alt=""></a></div>
                        <div><a id="img5" href="#"><img src="/resources/img/banner5.png" alt=""></a></div>
                        
                        
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
                            <div class="notice2">
                                <h4>Say</h4>
                                <ul>
                                 <c:forEach items="${sayList}" varStatus="index" var="say" begin="0" end="2" >
                                    <li><a href="/say/sayList" ><c:out value="${say.article_title}"/></a><span><fmt:formatDate value="${say.article_regdate}" pattern="yyyy-MM-dd"/></span></li>
                                 </c:forEach>
                                 
                                </ul>
                                <a href="/say/sayList" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                            <br>
                            
                            <!-- //게시판 -->
                            
                            <!-- 게시판 유형2 -->
                            <div class="notice2">
                                <h4>Tip</h4>
                                <ul>                              
                                	<c:forEach items="${list}" varStatus="index" var="board" begin="0" end="2">
                                		
                                    	<li><a href="/board/get?article_no=${board.article_no}"><c:out value="${board.article_title}"/></a><span><fmt:formatDate value="${board.article_regdate}" pattern="yyyy-MM-dd"/></span></li>
                                 	</c:forEach>
                                </ul>
                                <li></li>
                                </ul>
                                <a href="/board/tipList" class="more ir_pm" title="더보기">더보기</a>
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
                                <h4>Talk</h4>
                                <ul >
                                	<c:forEach items="${talkList}" varStatus="index" var="talk" begin="0" end="2">
	                                   <li >
	                                       <a href="/talk/get?article_no=${talk.article_no }">
	                                           <img height=50 width=20 src="/resources/img/notice0<c:out value="${index.count}"/>.jpg" alt="이미지1">
	                                           <strong><c:out value="${talk.article_title}"/></strong> <table>
	                                           <span style="overflow: hidden;text-overflow: ellipsis;height: 20px;white-space: nowrap;"> <c:out value="${talk.article_content}" escapeXml="false"/></span></table>
	                                          
	                                       </a>
	                                   </li>
                                    </c:forEach>
                                </ul>
                                <a href="/talk/talkList" class="more ir_pm" title="더보기">더보기</a>
                            
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
                                <h4>    </h4>
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
<!-- <script type="text/javascript">
	$(document).ready(function() {
	           
	           
       $("#img1").on("click", function() {
    	  
    	  $("#header").css({"background":"url(/resources/img/main1.jpg) center top no-repeat"}); 	
    	   
 		});
       
       $("#img2").on("click", function() {
     	  
     	  $("#header").css({"background":"url(/resources/img/main2.jpg) center top no-repeat"}); 	
     	   
  		});
       
       $("#img3").on("click", function() {
     	  
     	  $("#header").css({"background":"url(/resources/img/main3.jpg) center top no-repeat"}); 	
     	   
  		});
       
       $("#img4").on("click", function() {
     	  
     	  $("#header").css({"background":"url(/resources/img/main4.jpg) center top no-repeat"}); 	
     	   
  		});
       
       $("#img5").on("click", function() {
     	  
     	  $("#header").css({"background":"url(/resources/img/main5.jpg) center top no-repeat"}); 	
     	   
  		});
	
	});
</script> -->

</html>