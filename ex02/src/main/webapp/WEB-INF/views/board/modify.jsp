<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
	

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Admin page, Home > Admin page, 회원정보">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>tipWrite</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="/resources/css/tipWrite.css" media="screen">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" integrity="sha384-tKLJeE1ALTUwtXlaGjJYM3sejfssWdAaWR2s97axw4xkiAdMzQjtOjgcyw0Y50KU" crossorigin="anonymous">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <script class="u-script" type="text/javascript" src="/resources/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.24.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
      
      
      <script src="https://cdn.tiny.cloud/1/upfjrmjzlxe8d46yolikwzpzudxfnrgywerhd8xv49kppe8o/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>	
        <script>
		    tinymce.init({
		      selector: '#mytextarea'
		    });
		  </script>
    
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="sayWrite">
    <meta property="og:type" content="website">
  </head>
   <%@include file="../includes/envHeader.jsp"%>
  <body class="u-body">
  <!-- <header class="u-clearfix u-header u-header" id="sec-bfa3">
  	<div class="u-clearfix u-sheet u-valign-middle u-sheet-1"></div>
  </header> -->
    <section class="u-clearfix u-image u-section-1" id="sec-9329" data-image-width="1280" data-image-height="853">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-white u-text-1"> Write</h2>
        <h2 class="u-text u-text-default u-text-white u-text-2">Home &gt; Say &gt; Write</h2>
      </div>
    </section>
   <!-- <!-- Appears on Tiny Blueprint (https://www.tiny.cloud/blog/) in articles:
 - Enhance Bootstrap forms with WYSIWYG editing-->
<div class="container mt-4 mb-4">
    <div class="row justify-content-md-center">
        <div class="col-md-12 col-lg-8">
            <h1 class="h2 mb-4" style="font-family: 'Gowun Batang', serif;">글쓰기</h1>
            
            <form role="form" action="/board/modify" method="post">
            
            <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
             <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
             <input  type='hidden' name='article_no' value='<c:out value="${board.article_no}"/>'>
             <input type='hidden' name='article_regdate' value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.article_regdate}"/>'>
             <input type='hidden' name='article_moddate' value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.article_moddate}"/>'>
             <input type='hidden' name='member_id' value='<c:out value="${board.member_id}"/>'>
             <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
             <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
              
              
            <div class="form-group">
                <label for="name" style="font-family: 'Gowun Batang', serif;">제목</label>
                <input type="text" name='article_title' class="form-control" id="title" placeholder="제목" style="font-family: 'Gowun Batang', serif;"
                value='<c:out value="${board.article_title}"/>'>
            </div>


            <div class="form-group">
              <label style="font-family: 'Gowun Batang', serif;">내용</label>
              <textarea id="mytextarea" rows="20" name='article_content'><c:out value="${board.article_content}"/></textarea>
            </div>
            
           <div class="form-group">
               <!--  <label for="phone">파일 업로드</label> -->
             <!--    <input type="text" class="form-control" id="phone" placeholder=""> -->
               <i class="fa fa-camera-retro fa-2x"></i>&nbsp;&nbsp;<input type="file" style="font-family: 'Gowun Batang', serif;">
            </div>

            <hr>

            <button id="alertBtn" type = "submit" data-oper='modify' class="btn btn-primary" style="font-family: 'Gowun Batang', serif;float:right;">등록</button>
            <button type = "submit" data-oper='remove' class="btn btn-primary" style="font-family: 'Gowun Batang', serif;float:right; margin:0px 10px;">삭제</button>
            <button type = "submit" data-oper='tipList' class="btn btn-primary" style="font-family: 'Gowun Batang', serif;float:right;">목록</button>
            <br><br><br><br>
            </form>
        </div>
    </div>
</div>

<!-- footer -->
    <%@include file="../includes/envFooter.jsp"%>
    
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
  <script type="text/javascript">
       	$(document).ready(function() {
       		
       		
       		var formObj = $("form");
       			
       		
       		$('button').on("click", function(e){
       		
        		e.preventDefault();
        		
        		var operation = $(this).data("oper");
        		
        		if(operation === 'modify') {
        			alert("게시글  수정되었습니다.");
        		}
        		console.log(operation);
        		
        		if(operation === 'remove') {
        			formObj.attr("action", "/board/remove");
        			
        			/* 목록으로 이동 시 form 태그 내용을 지우고 필요한 파라미터만 다시 추가  */
        		} else if (operation === 'tipList') {
        			formObj.attr("action", "/board/tipList").attr("method", "get");
        			var pageNumTag = $("input[name='pageNum']").clone();
        			var amountTag = $("input[name='amount']").clone();
        			var keywordTag = $("input[name= 'keyword']").clone();
        			var typeTag = $("input[name='type']").clone();
        			
        			formObj.empty();
        			formObj.append(pageNumTag);
        			formObj.append(amountTag);
        			formObj.append(keywordTag);
        			formObj.append(typeTag);
       			}
       			formObj.submit();
          	});
          });
    </script>
</html>