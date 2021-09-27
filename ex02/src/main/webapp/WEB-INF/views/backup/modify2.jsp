<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@include file="../includes/header.jsp" %>
    
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    	<div class="panel-heading">Board List Page</div>
               
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form role="form" action="/board/modify" method="post">
                        	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
                       		<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
                        	
                        	<div class="form-group">
                       			<label>번호</label> <input class="form-control" name='article_no' 
                       			value='<c:out value="${board.article_no}"/>' readonly = "readonly">
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>제목</label> <input class="form-control" name='article_title'
                       			value='<c:out value="${board.article_title}"/>'>                      			
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>내용</label> 
                       			<textarea class="form-control" rows="3" name='article_content'>
                       			<c:out value="${board.article_content}"/> </textarea>
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>ID</label> 
                       			<input class="form-control"  name='member_id' 
                       			value='<c:out value="${board.member_id}"/>' readonly = "readonly">
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>등록 날짜</label> 
                       			<input class="form-control"  name='article_regdate' 
                       			value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.article_regdate}"/>' readonly = "readonly">
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>수정 날짜</label> 
                       			<input class="form-control"  name='article_moddate' 
                       			value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.article_moddate}"/>' readonly = "readonly">
                       		</div>
                       		                     		
                       		
                       		<button type = "submit" data-oper='modify' class="btn btn-default">Modify</button>
                       		<button type = "submit" data-oper='remove' class="btn btn-danger">Remove</button>
                       		
                       		<button type = "submit" data-oper='tipList' class="btn btn-info" >list</button>
                       	</form>
                        
                        
                         </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           

       <%@include file="../includes/footer.jsp"%>
       
           <script type="text/javascript">
          	$(document).ready(function() {
          		
          		var formObj = $("form");
          		
          		$('button').on("click", function(e){
          		
	          		e.preventDefault();
	          		
	          		var operation = $(this).data("oper");
	          		
	          		console.log(operation);
	          		
	          		if(operation === 'remove') {
	          			formObj.attr("action", "/board/remove");
	          		} else if (operation === 'tipList') {
	          			formObj.attr("action", "/board/tipList").attr("method", "get");
	          			var pageNumTag = $("input[name='pageNum']").clone();
	          			var amountTag = $("input[name='amount']").clone();
	          			
	          			formObj.empty();
	          			formObj.append(pageNumTag);
	          			formObj.append(amountTag);
          		}
          		formObj.submit();
          	});
          });
          </script>