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
                        	
                        	<form role="form" action="/board/register" method="post">
                        		<div class="form-group">
                        			<label>제목</label> <input class="form-control" name='article_title'>
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>내용</label> 
                        			<textarea class="form-control" rows="3" name='article_content'></textarea>
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>ID</label> 
                        			<input class="form-control" name='member_id'>
                        		</div>
                        		
                        		<button type="submit" class="btn btn-default">Submit Button</button>
                        		<button type="reset" class="btn btn-default">Reset Button</button>
                        	</form>
                        
                        
                         </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           

       <%@include file="../includes/footer.jsp"%>
    