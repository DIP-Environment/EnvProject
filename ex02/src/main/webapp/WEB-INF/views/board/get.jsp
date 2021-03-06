<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String adminCheck = (String)session.getAttribute("adminCheck");
	String IdCheck = (String)session.getAttribute("IdCheck");
	
	System.out.println("IdCheck : " + IdCheck);
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
  
   <!--- basic page needs
   ================================================== -->
   <meta charset="utf-8">
	<title>Tip detail</title>
	<meta name="description" content="">  
	<meta name="author" content="">

   <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="/resources/css/tipGet/base.css">
   <link rel="stylesheet" href="/resources/css/tipGet/vendor.css">  
   <link rel="stylesheet" href="/resources/css/tipGet/main.css">
   <link href="/resources/css/tipGet/bootstrap.min.css" rel="stylesheet">

   <!-- script
   ================================================== -->
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="/resources/js/tipGet/modernizr.js"></script>
	<script src="/resources/js/tipGet/pace.min.js"></script>
 	
	

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- header 
   ================================================== -->
   <%@include file="../includes/envHeader.jsp"%>
</head>

<body id="top">

	
   
   
   <!-- end header -->
   

   <!-- content
   ================================================== -->
   <section id="content-wrap" class="blog-single d-flex justify-content-center">
   	<div class="row ">
   		<div class="col-twelve ">

   			<article class="format-standard">  

   				<div class="content-media">
						<div class="post-thumb">
							<img src="/resources/img/tipGet.png"> 
						</div>  
					</div>

					<div class="primary-content"> 

						<h1 class="page-title"><c:out value="${board.article_title}"/></h1>	

						<ul class="entry-meta">
							<li class="date"><fmt:formatDate value="${board.article_regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></li>						
							<li class="cat"><p><c:out value="${board.member_id}"/></p></li>		
	
						</ul>						

						<p class="lead"><c:out value="${board.article_content}" escapeXml="false"/></p>
					</div>

<!-- ????????? ?????? ?????? -->
						<!-- <p><img src="images/shutterbug.jpg" alt=""></p> -->

<!-- ????????? ?????? ?????? ??? -->
						
<button data-oper='tipList' type="submit" class="mybtn" style="float:right;background:white;color:black;border-radius: 30px;border-color:#33AFFF;border-style:solid;border-width:1px;color:#33AFFF">??????</button>



<c:if test="${IdCheck eq board.member_id || adminCheck eq 'Y'}">
	<button data-oper='modify' type="submit" class="mybtn" style="float:right;background:white;color:black;border-radius: 30px;border-color:#33AFFF;border-style:solid;border-width:1px;color:#33AFFF">??????</button>
	<button data-oper='remove' type="submit" class="mybtn" style="float:right;background:white;color:black;border-radius: 30px;border-color:#33AFFF;border-style:solid;border-width:1px;color:#33AFFF">??????</button>
</c:if>

<form id='operForm' action="/board/modify" method="get">
      <input type='hidden' id='article_no' name='article_no' value='<c:out value="${board.article_no}"/>'>
      <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
      <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
      <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
      <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
</form>
<br><br><br>

				</article>
   		

			</div> <!-- end col-twelve -->
   	</div> <!-- end row -->




   </section> <!-- end content -->
   <!-- ?????? ?????? ?????? -->

		<div class="comments-wrap d-flex justify-content-center" style="background-color:white;">
			<div id="comments" class="row">
				<div class="col-full">

               <h3>Comments</h3>

               <!-- commentlist -->
               <ol class="commentlist chat">

                  <li class="depth-1" data-comment_no='12'>


                     <div class="comment-content">

	                     <div class="comment-info">
	                        <cite>Itachi Uchiha</cite>

	                        <div class="comment-meta">
	                           <time class="comment-time" datetime="2014-07-12T23:05">Jul 12, 2014 @ 23:05</time>
	                           
<!-- ????????? ?????? -->
	                          <!--  <span class="sep">/</span><a class="reply" href="#">Reply</a> -->
<!-- ????????? ?????? ??? -->
	                        </div>
	                     </div>

	                     <div class="comment-text">
	                        <p>??????</p>
	                     </div>

	                  </div>

                  </li>
					<!--????????? ?????? ??? -->
				

               </ol> <!-- Commentlist End -->					

               <!-- respond -->
               <div class="respond comment_write">
<c:if test = "${ not empty loginMember}">
               	<h3>Leave a Comment</h3>

                  <!-- <form name="contactForm" id="contactForm" method="post" action=""></form> Form End -->
  					   <fieldset>
  					   <div class="form-group">
						<input name="comment_member_id" value='comment_member_id' type='hidden'>
						<input name="comment_regdate" value='' type='hidden' >
                     <!-- <div class="form-field">-->
                  
                        <textarea name="comment_content"  class="full-width" style="font-size:20px;"></textarea>
                       
                     </div>
					
                     <button id='commentRegisterBtn'style="margin:30px 0 ;float:right;background:white;color:black;border-radius: 30px;border-color:#33AFFF;border-style:solid;border-width:1px;color:#33AFFF">??????</button>
					
  					   </fieldset>
  				 </c:if>     

               </div> <!-- Respond End -->

         	</div> <!-- end col-full -->
         </div> <!-- end row comments -->
		</div> <!-- end comments-wrap -->
   
   <!-- modal -->
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   	<div class="modal-dialog">
   		<div class="modal-content">
   			<div class="modal-header">
   				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button>
   			 					<h4 class="modal-title" id="myModalLabel">?????? ??????</h4>

   			
   			<div class="modal-footer">
   			<style>
   				#modalCloseBtn:hover {
   					background-color:#EDD8CA;
   					
   				}
   			</style>
   				<button id='modalModBtn' style="color:white; pading:1.5rem; width:80px; text-align:center; font-size:15px; 
   border-radius: 15px;  " type="button" class="btn btn-warning">??????</button>
   				<button id='modalRemoveBtn'style="pading:1.5rem; width:80px; text-align:center; font-size:15px;
   border-radius: 15px;" type="button" class="btn btn-danger">??????</button>
   				<button id='modalCloseBtn' style="color:white; background-color:#EEC0B7; pading:1.5rem; width:80px; text-align:center; font-size:15px; 
   border-radius: 15px;" type="button" class="btn btn-default" data-dismiss="modal">??????</button>
   			</div>
   		</div>
   	</div>
   </div>
   
   <!-- modal 2 -->



<!-- /modal 2 -->


   <!-- footer
   ================================================== -->
    <%@include file="../includes/envFooter.jsp"%>

   

   <!-- Java Script
   ================================================== --> 
  
    
   <script src="/resources/js/tipGet/plugins.js"></script>
   <script src="/resources/js/tipGet/main.js"></script>
	<script type="text/javascript" src="/resources/js/comment.js"></script>

	
	<script>
		$(document).ready(function () {
			var comment_noValue = '<c:out value="${board.article_no}"/>';
			var commentUL = $(".chat");
			
			showList(1);
			
			function showList(page) {
				commentService.getList({article_no:comment_noValue, page: page||1 }, function(list) {
					var str="";
					if(list == null || list.length == 0) {
						commentUL.html("");
						
						return;
					}
					for (var i=0, len = list.length || 0; i < len; i++) {
						str +="<li class='depth-1' data-comment_no='"+list[i].comment_no+"'>";
						str +="<div class='comment-content'>";
						str +="<div class='comment-info' style='font-weight: bold;'>";
						str +="<cite>"+list[i].comment_member_id+"</cite>";
						str +="<div class='comment-meta'>";
						str +="<small class='comment-time' datetime='2014-07-12T23:05'>"+ commentService.displayTime(list[i].comment_regdate) +"</small>";
						str +="</div></div><div class='comment-text'><p>"+list[i].comment_content+"</p> </div> </div></li>";
					}
					
					commentUL.html(str);
				});
			}
			
			/* comment ?????? */
			var com_write = $(".comment_write"); //comment div??????
			var inputComment = com_write.find("textarea[name='comment_content']");		
			var inputCommentMember = '<c:out value="${loginMember}"/>'; //member_id??? ?????? ???????????? ??????
				/* com_write.find("input[name='comment_member_id']"); */
			var inputCommentDate = com_write.find("input[name='comment_regdate']");
			
			var commRegisterBtn = $("#commentRegisterBtn");
			
			/* ?????? ?????? ?????? ??? ?????? ????????? ??????, member(value????????????), article_no ??? commentService.add()??? ?????? */
			commRegisterBtn.on("click", function(e){
				var comment ={
						comment_content : $.trim(inputComment.val()), 
						comment_member_id : inputCommentMember,
						article_no : comment_noValue
				};
				commentService.add(comment, function(result) {
					//alert(result);
					
					com_write.find("input").val();
					com_write.find("textarea").val("");
					showList(1);
					
				});
				
			});
			
			var modal=$(".modal");
			var modalInputReply = modal.find("input[name='comment_content']");
			var modalInputReplyer = modal.find("input[name='comment_member_id']");
			var modalInputReplyDate = modal.find("input[name='comment_regdate']");
			
			var modalModBtn = $("#modalModBtn");
			var modalRemoveBtn = $("#modalRemoveBtn");
			
			
			$(".chat").on("click", "li", function(e){
				var comment_no = $(this).data("comment_no");
				
				commentService.get(comment_no, function(comment_content){
					modalInputReply.val(comment_content.comment_content);
					modalInputReplyer.val(comment_content.comment_member_id);
					
					modal.data("comment_no", comment_content.comment_no);
					
					modal.find("button[id !='modalCloseBtn']").hide();
					modalInputReplyDate.closest("div").hide();
					modalModBtn.show();
					modalRemoveBtn.show();
					$(".modal").modal("show");
					
					
				});
				console.log(comment_no);
			});
			
			modalModBtn.on("click", function(e) {
				var comment = {comment_no : modal.data("comment_no"), comment_content : modalInputReply.val()};
				
				commentService.update(comment, function(result){
					//alert(result);
					modal.modal("hide");
					showList(1);
				});
				
			});
			
			modalRemoveBtn.on("click", function (e){
				var comment_no = modal.data("comment_no");
				
				commentService.remove(comment_no, function(result){
					//alert(result);
					modal.modal("hide");
					showList(1);
				});
			});
			
			
		});
                          
	</script>


	
<!-- 	<script type="text/javascript">
		
		console.log("==================");
		console.log("JS TEST");
		
		var article_noValue = '<c:out value="${board.article_no}"/>';
		
	/* 	//?????? ?????? ?????????
		commentService.getList({article_no:article_noValue, page:1}, function(list) {
			for(var i = 0, len = list.length || 0; i < len; i++){
				console.log(list[i]);
			}
		}); */
		
	/* 	//?????? ?????????
		commentService.remove(4, function(count) {
			console.log(count);
			if(count === "success") {
				alert("REMOVED");
			}
		}, function(err) {
			alert('ERROR...');
		}); */
		
		/* commentService.update({
			comment_no : 2,
			article_no : article_noValue,
			comment_content : "MOdified Reply...."
		}, function(result){
			alert("?????? ??????...");
		}); */
		
		commentService.get(10, function(data){
			console.log(data);
		})
	</script> -->
	
	<script type="text/javascript">
	$(document).ready(function() {
		
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e){
			operForm.attr("action", "/board/modify").submit();
		});
		
		$("button[data-oper='tipList']").on("click", function(e){
			operForm.find("#article_no").remove();
			operForm.attr("action", "/board/tipList").submit();

		});
		
		$("button[data-oper='remove']").on("click", function(e){
			operForm.attr("method", "post")
			operForm.attr("action", "/board/remove").submit()
			
		});
	});
</script>
</body>

</html>