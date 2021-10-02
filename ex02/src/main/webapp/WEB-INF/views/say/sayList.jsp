<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String adminCheck = (String)session.getAttribute("adminCheck");
	
%>  
<html>
	<head>
		<title>say page</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		<link rel="stylesheet" href="/resources/css/sayMain.css" />
		<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		
		<!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
         
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/css/tipAdmin.css" rel="stylesheet" />
    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	<body style="background-color:#f5f5f5;">
	<%@include file="../includes/envHeader.jsp" %>

		<!-- Header -->
			<header id="header" class="alt" style="width:1900px; padding:0 0 50px 0;">
				<div class="inner">
					<h1 style="font-family: 'Gowun Batang', serif;">Say: 지구촌 소식</h1>
					
					<p></p>
				</div>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Items 전체 블록-->
					<section class="main items">
					
<!-- 아이템 시작 -->		
					 <c:forEach items="${list}" var="say" varStatus="status">
						<article class="item" style="background-color:#ffffff">
							<form role="form" action="/say/remove" method="post">
							<input  type='hidden' name='article_no' value='<c:out value="${say.article_no}"/>'>
							<input type='hidden' name='admin_yn' value='<c:out value="${member}"/>'>
							<header>
								<a><img src="/resources/img/say${status.index}.jpg" alt="" /></a>
								<h3><c:out value="${say.article_title}"/></h3>
							</header>
							<p><c:out value="${say.article_content}" escapeXml="false"/></p>
							<p style="margin:20px 0  0  0 ">[출처]</p><p><a style="text-decoration:none; font-weight: bold; font_size:15px;" target="_blank" href="<c:out value="http://${say.article_link}"/>"><c:out value="${say.article_link}"/></a></p>
							
							<%-- <%if(loginMember=="admin"){ %> --%>
							<%-- <c:set var = "login" scope = "session" value = "${loginMember}"/> --%>
							<c:if test = "${adminCheck eq 'Y'}">
							
							<button id="deleteBtn" type = "submit" data-oper='remove'style="color:#999; margin:0; padding:0; background-position: 0px;"><img style="width:20px; height:20px;" src="/resources/img/delete.png"></button>
							
							</c:if>
							<%-- <%} %> --%>
							</form>
						</article>
					</c:forEach>
<!-- 아이템 끝-->
					
					</section>
					
					
				<!-- 아이템 전체 블록 끝 -->
				<div class="search d-flex-inline " style="text-align: center;  display:inline">
		   		<form id='searchForm' action="/say/sayList" method='get'  >
	   			<select  class="m-1"name='type' style="width:70px; display:inline;">
      				<option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>선 택</option>
   					<option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제 목</option>
    				<option value="C"<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내 용</option>
    				<option value="TC"<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제 목 or 내 용</option>
     			</select>
              
               	<input type="text" name="keyword" placeholder="검 색" style="text-align:left;  display:inline" value='<c:out value="${pageMaker.cri.keyword}"/>'>
              	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
       			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
       			<button class="btn btn-default px-1"  style=" background-color:#f5f5f5; width:20px; outline: none;
  box-shadow: none; border: none;"><i class="fa fa-search fa-2x" ></i></button>
       			</form>
           </div>
		<c:if test = "${adminCheck eq 'Y'}">		
		 <button id="regBtn" style="float:right; height: 3.5em;
		line-height: 3.5em; border-radius: 30px; background:white; color:#2196F3;  
		padding: 0px 2em 0px 2.375em; border: 2px solid #2196F3; border-size:20px;vertical-align: middle; 
		font-size:15px;">글쓰기</button><br><br><br><br>
		</c:if>
                <div class="pagination"  style="display: flex;justify-content: center; ">
				  	<ul class="pagination">
		         		<c:if test="${pageMaker.prev}">
		         			<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">이전</a></li>
		         		</c:if>
		         		
		         		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
		         			<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
		         		</c:forEach>
		         		
		         		<c:if test="${pageMaker.next}">
		         			<li class="paginate_button next"><a href="${pageMaker.endPage + 1}">다음</a></li>
		         		</c:if>
		         	</ul>
		         	<form id='actionForm' action="/say/sayList" method='get'>
		         		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		         		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		         		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
		         		<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
		         	</form>
				</div><br><br>
			<!-- pagination end -->
		 	
			</div>
			
		<!-- Wrapper 끝 -->
			
		
   	
		<!-- Scripts -->
			<script src="/resources/js/say/jquery.min.js"></script>
			<script src="/resources/js/say/skel.min.js"></script>
			<script src="/resources/js/say/util.js"></script>
			<script src="/resources/js/say/main.js"></script>

	</body>
	<%@include file="../includes/envFooter.jsp" %>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	 <script type="text/javascript">
          	$(document).ready(function() {
          		
          		/* var result = '<c:out value="${result}"/>';
          		
          		checkModal(result);
          		
          		function checkModal(result) {
          			if(result === '' || history.state) {
          				return;
          			}
          			
          			if(parseInt(result) > 0) {
          				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
          			}
          			
          			$("#myModal").modal("show");
          		} */
          		
          		history.replaceState({}, null, null);
          		
          		
          		
          		
          		/* $("#logo").on("click", function() {
          			self.location = "/board/tipList";
          		}); */
          		
          		$("#resetBtn").on("click", function() {
          			self.location = "/say/sayList";
          		});
          		
          		$("#regBtn").on("click", function() {
          			self.location = "/say/register";
          		});
          		
          		var actionForm = $("#actionForm");
          		$(".paginate_button a").on("click", function(e) {
          			e.preventDefault();
          			console.log('click');
          			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
          			actionForm.submit();
          		});
          		
          		/* $(".move").on("click", function(e){
          			e.preventDefault();
          			actionForm.append("<input type='hidden' name='article_no' value='"+$(this).attr("href")+"'>");
          			actionForm.attr("action", "/say/get");
          			actionForm.submit();
          		}); */
          		
          		var searchForm = $("#searchForm");
          		
          		$("#searchForm button").on("click", function(e){
          			
          			if(!searchForm.find("option:selected").val()){
          				alert("검색종류를 선택하세요");
          				return false;
          			}
          			
          			if(!searchForm.find("input[name='keyword']").val()) {
          				alert("키워드를 입력하세요");
          				return false;
          			}
          			
          			searchForm.find("input[name='pageNum']").val("1");
          			e.preventDefault();
          			
          			searchForm.submit();
          		});
          	});
         </script>
</html>