<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tip page</title>
        <!-- Favicon-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
		<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&display=swap" rel="stylesheet">
        <link rel="icon" type="/resources/img/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
         
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/css/tipAdmin.css" rel="stylesheet" />
    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <%@include file="../includes/envHeader.jsp"%>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold" style="font-family: 'Gowun Batang', serif;">우리 근처의 친환경을 소개해요 </h1>
                        <p class="fs-4" style="font-family: 'Gowun Batang', serif;">생활 속 환경 팁을 공유합니다.</p>
                        <!-- <a class="btn btn-primary btn-lg" href="#!">Call to action</a> -->
                    </div>
                </div>
            </div>
        </header>
                
        <!-- Page Content-->
        <section class="pt-4">
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                
                <!-- panel -->
                <c:forEach items="${list}" var="board" >
                	
	                    <div class="col-lg-6 col-xxl-4 mb-5">
	                    	
	                        <div class="card bg-light border-0 h-100">
	                       <!-- card -->
	                       	<a class='move' href='<c:out value="${board.article_no}"/>'>
	                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
	                            <!-- icon -->
	                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-collection"></i></div>
	                                <h2 class="fs-4 fw-bold" style="font-family: 'Gowun Batang', serif;"><c:out value="${board.article_title}"/></h2><hr>
	                                <%-- <p class="mb-0 " style="overflow: hidden; text-overflow: ellipsis;white-space: nowrap; width: 280px; height: 30px;">
	                                	<c:out value="${board.article_content}" escapeXml="true"/>
	                                </p> --%>
	                                
	                            </div>
	                            </a>
	                        </div>
	                        
	                    </div>
                    
                  </c:forEach>
                 
              <!-- all panels end --> 
                                         
                </div>
     		
		   <div class="search d-flex-inline " style="text-align: center;  ">
		   		<form id='searchForm' action="/board/tipList" method='get'  >
	   			<select  class="m-1"name='type' style="width:80px;">
      				<option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>선 택</option>
   					<option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제 목</option>
    				<option value="C"<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내 용</option>
    				<option value="TC"<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제 목 or 내 용</option>
     			</select>
              
               	<input type="text" name="keyword" placeholder="검 색" style="text-align:left" value='<c:out value="${pageMaker.cri.keyword}"/>'>
              	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'/>
       			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'/>
       			<button class="btn btn-default px-1"  style="width:20px; border:0; outline:0;"><i class="fa fa-search fa-2x" ></i></button>
       			</form>
           </div>
              
         
             <!-- button -->
             
             <div class="d-flex flex-row-reverse">
             	
               	<button id='regBtn'class="btn info p-2 " style='border-radius: 30px; '>글쓰기</button>
               	<button id='resetBtn'class="btn info p-2 mx-2 " style='border-radius: 30px; '>모두 보기</button>
             </div> 
             
             
               <!-- pagination -->   
                <div class="pagination"  style="display: flex;justify-content: center;">
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
		         	<form id='actionForm' action="/board/tipList" method='get'>
		         		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		         		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		         		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
		         		<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
		         	</form>
				</div><br><br>
				
			<!-- pagination end -->
			
			
	
			
            </div>
        </section>
               <style type="text/css"> 
				a { text-decoration:none } 
				</style>
    </body>
    
    <!-- Footer-->
        <%@include file="../includes/envFooter.jsp"%>
        <!-- Bootstrap core JS-->
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
          			self.location = "/board/tipList";
          		});
          		
          		$("#regBtn").on("click", function() {
          			self.location = "/board/register";
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
          			actionForm.attr("action", "/board/get");
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