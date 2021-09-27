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
                        	
                        	<div class="form-group">
                       			<label>번호</label> <input class="form-control" name='article_no' 
                       			value='<c:out value="${board.article_no}"/>' readonly = "readonly">
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>제목</label> <input class="form-control" name='article_title'
                       			value='<c:out value="${board.article_title}"/>' readonly = "readonly">
                       			
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>내용</label> 
                       			<textarea class="form-control" rows="3" name='article_content' readonly = "readonly">
                       			<c:out value="${board.article_content}"/> </textarea>
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>ID</label> 
                       			<input class="form-control"  name='member_id' 
                       			value='<c:out value="${board.member_id}"/>' readonly = "readonly">
                       		</div>
                       		
                       		
                       		
                       		<button data-oper='modify' class="btn btn-default">Modify</button>
                       		<button data-oper='tipList' class="btn btn-info">List</button>
                       		
                       		<form id='operForm' action="/board/modify" method="get">
                       			<input type='hidden' id='article_no' name='article_no' value='<c:out value="${board.article_no}"/>'>
                       			<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
                       			<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
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
       		
       		var operForm = $("#operForm");
       		
       		$("button[data-oper='modify']").on("click", function(e){
       			operForm.attr("action", "/board/modify").submit();
       		});
       		
       		$("button[data-oper='tipList']").on("click", function(e){
       			operForm.find("#article_no").remove();
       			operForm.attr("action", "/board/tipList")
       			operForm.submit();
       		});
       	});
       </script>