<%@page import="org.zerock.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/navBar.jsp" %>
<%
	String loginMember = (String)session.getAttribute("loginMember");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>environment</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/style.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>

	<%-- <div id="container">
		<header>
			<h1>Hello MVC</h1>
			<div class="login-container">
			<%if(loginMember==null){ %>
				<form id="loginFrm" action="<%=request.getContextPath() %>/login" method="post" 
				onsubmit="return fn_login_validate();">
					<table>
						<tr>
							<td>
								<input type="text" name="memberId" id="memberId" 
								placeholder="아이디" value="<%=saveId!=null?saveId:""%>">
							</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<input type="password" id="password" name="password" placeholder="비밀번호">
							</td>
							<td>
								<input type="submit" value="로그인" >
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox" name="saveId" 
								id="saveId" <%=saveId!=null?"checked":"" %>>
								<label for="saveId">아이디저장</label>
								<input type="button" value="회원가입" 
								onclick="location.replace('<%=request.getContextPath()%>/memberenroll.do')">
							</td>
						</tr>
					</table>
				</form>
				<%} else{%>
					<table id="logged-in">
						<tr>
							<td colspan="2">
								<%=loginMember.getMemberName() %>님, 환영합니다.
							</td>
						</tr>
						<tr>
							<td colspan="2">
								현재접속자수 : <%=LoginCheckListener.getCount() %>
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" value="내정보보기" 
								onclick="location.assign('<%=request.getContextPath()%>/memberView.do?userId=<%=loginMember.getMemberId()%>')">
							</td>
							<td>
								<input type="button" value="로그아웃"
								onclick="location.replace('<%=request.getContextPath()%>/logout');">
							</td>
						</tr>
					</table>
				<%} %>
			</div>
			<nav>
				<ul class="main-nav">
					<li class="home"><a href="">Home</a></li>
					<li id="notice"><a href="<%=request.getContextPath()%>/notice/noticeList">공지사항</a></li>
					<li id="board"><a href="<%=request.getContextPath()%>/board/boardList">게시판</a></li>
					<%if(loginMember!=null&&loginMember.getMemberId().equals("admin")){ %>
						<li id="admin-member">
							<a href="<%=request.getContextPath()%>/admin/memberList">회원관리</a>
						</li>
					<%} %>
				</ul>
			</nav>
		</header> --%>
		
		<!-- <script>
			const fn_login_validate=()=>{
				//userId input태그에 값이 있으면 값이 4글자 이상이면
				const userId=$("#userId").val();
				if(userId.trim().length<4){
					alert("아이디를 4글자 이상 입력하세요");
					return false;
				}
				//password 공란이 아니면 전송
				const pw=$("#password").val();
				if(pw.trim().length==0){
					alert("비밀번호를 입력하세요!");
					return false;
				}
				
			}
		
		</script> -->
		
		
		
		
		
		
		
		