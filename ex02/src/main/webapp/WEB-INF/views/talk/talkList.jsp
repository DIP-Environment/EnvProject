<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String loginMember = (String)session.getAttribute("loginMember");
%>       
<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>


   <!--- basic page needs
   ================================================== -->
   <meta charset="utf-8">
	<title>talk Page</title>
	<meta name="description" content="">  
	<meta name="author" content="">

   <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="/resources/css/talk/base.css">
   <link rel="stylesheet" href="/resources/css/talk/vendor.css">  
   <link rel="stylesheet" href="/resources/css/talk/main.css">
      
<link rel="stylesheet" href="/resources/css/talkMainImg.css" />
   <!-- script
   ================================================== -->
	<script src="/resources/js/talk/modernizr.js"></script>
	<script src="/resources/js/talk/pace.min.js"></script>

</head>

<body id="top">
	<%@include file="../includes/envHeader.jsp" %>
   <!-- masonry
   ================================================== -->
   
  	<header id="header" class="alt" style="width:1900px; height:700px; padding:0 0 50px 0;">
				<div class="inner">
					<h1 style="font-family: 'Gowun Batang', serif; font-size:62px; color:#ffffff;
					  
    padding: 0 0.5em 0.25em 0.5em;
    border-bottom: solid 2px #ffffff;
    font-weight: 200;
    font-family: "Pacifico", cursive;
    text-transform: none;
    letter-spacing: 0;">Talk: 환경 이야기</h1>
					
					<p></p>
				</div>
			</header>
   <section id="bricks">

   	<div class="row masonry">

   		<!-- 카드 모음 전체 영역 brick-wrapper -->
         <div class="bricks-wrapper">
         	<div class="grid-sizer"></div>

	<!-- 기본 카드 -->
			<c:forEach items="${list}" var="talk" varStatus="status" >
        		<article class="brick entry animate-this">
               <div class="entry-thumb">
              		<a class='move' href='<c:out value="${talk.article_no}"/>'>
	                  <img src="/resources/img/talk${status.index%10}.jpg" alt="Lighthouse">                      
                  </a>
               </div>
               <div class="entry-text">
               	<div class="entry-header">
               	<!-- entry-meta -->
               		<h1 class="entry-title" style="overflow: hidden;text-overflow: ellipsis;height: 30px;white-space: nowrap;"><a href='<c:out value="${talk.article_no}"/>' class='move'><c:out value="${talk.article_title}"/></a></h1>
               	</div>
               	<!-- entry-header -->
					<div class="entry-excerpt" style="overflow: hidden;text-overflow: ellipsis;height: 20px;white-space: nowrap;">
						<c:out value="${talk.article_content}" escapeXml="false"/>
					</div>
               </div>
               <!-- entry-text -->
        	</article> 
        </c:forEach>
       <!-- 기본 카드 -->

         </div> 
<!-- 카드 모음 전체 영역 끝 end brick-wrapper --> 
         
       <!-- 검색 상자 -->
	  <!-- <div class="search" style="display: flex;justify-content: center;">     
         <i class="fa fa-search fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;<input type="text" name="search" placeholder="  Search.." style="text-align:left;">
       </div> -->
       <br><br>
       <!-- 검색상자 2 -->
      <div class="search d-flex-inline " style="text-align: center;   display:inline">
   		<form id='searchForm' action="/talk/talkList" method='get'  >
  			<select  class="m-1"name='type' style="width:120px;display:inline; height: 5rem;  padding: 1rem 1rem;">
				<option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>선 택</option>
				<option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제 목</option>
				<option value="C"<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내 용</option>
				<option value="TC"<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제 목 or 내 용</option>
			</select>
		      
		    <input type="text" name="keyword" placeholder="검 색" style="width:300px; text-align:left;  display:inline " value='<c:out value="${pageMaker.cri.keyword}"/>'>
			<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
			<button class="btn btn-default px-1"  style=" background-color:#f4f4f4; width:20px; outline: none;
			box-shadow: none; border: none;"><i class="fa fa-search fa-2x" ></i></button>
		</form>
         </div>
       
       
        <!-- 글쓰기 버튼 -->
        <c:if test = "${ not empty loginMember}">
         <button id="regBtn" style="float:right; border-radius: 30px; background:white; color:#2196F3; border: 2px solid #2196F3; border-size:20px;vertical-align: middle; font-size:15px;">글쓰기</button>        
         </c:if>
         <button id='resetBtn' style=" float:right; border-radius: 30px; background:white; color:#2196F3; border: 2px solid #2196F3; border-size:20px;vertical-align: middle; font-size:15px;">모두 보기</button>
   	</div> 
   	<!-- end row -->

   </section> 
   <!-- end bricks -->
  
   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 

	<!-- pagination -->   
                <div class="pagination"  style="margin: 0px 0px 100px 0px;" display: flex;justify-content: center; ">
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
		         	<form id='actionForm' action="/talk/talkList" method='get'>
		         		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		         		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		         		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
		         		<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
		         	</form>
				</div><br><br>
			<!-- pagination end -->

   <!-- Java Script
   ================================================== --> 
   <script src="/resources/js/talk/jquery-2.1.3.min.js"></script>
   <script src="/resources/js/talk/plugins.js"></script>
   
   <script src="/resources/js/talk/main.js"></script>

</body>
<%@include file="../includes/envFooter.jsp" %>
<script type="text/javascript">
          	$(document).ready(function() {
          		
          		var result = '<c:out value="${result}"/>';
          		
          		/* checkModal(result); */
          		
          		history.replaceState({}, null, null);
          		
          		$("#regBtn").on("click", function() {
          			self.location = "/talk/register";
          		});
          		
          		$("#resetBtn").on("click", function() {
          			self.location = "/talk/talkList";
          		});
          		
          		var actionForm = $("#actionForm");
          		$(".paginate_button a").on("click", function(e) {
          			e.preventDefault();
          			console.log('click');
          			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
          			actionForm.submit();
          		});
          		
          		$(".move").on("click", function(e){
          			e.preventDefault();
          			actionForm.append("<input type='hidden' name='article_no' value='"+$(this).attr("href")+"'>");
          			actionForm.attr("action", "/talk/get");
          			actionForm.submit();
          		});
          		
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