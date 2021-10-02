<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="/resources/css/envFooter2.css">
<style type="text/css">
a.no-uline:link    { text-decoration:none; }
a.no-uline:visited { text-decoration:none ;}
a.no-uline:hover   { text-decoration:none; }
a.no-uline:active  { text-decoration:none ;}

</style>

		<footer class="footer-distributed" style="background-color:white;height:70px;padding:14px 15px 15px 200px;">
		
		<button type="button" style="background-color:transparent;border:0;outline:0;margin:0px;padding:0px;"><a href="/board/envMain"><img src="/resources/img/envLogo.png" alt="logo"></a></button>

		<u:isLogin>
			<a href="/member/logout" style="color:blue;float:right;padding:10px;padding:10px 300px 10px 10px;hover:{text-decoration:none;}"><img src="/resources/img/log-out.png" style="width:35px; padding:0px 0px 0px 0px;hover:{text-decoration:none;}"></a>
			<p style="display:inline;float:right;padding:15px; ">${loginMember}</p>
		</u:isLogin>
		<u:notLogin>
			<a href="/member/login" style="color:blue;float:right;padding:10px;padding:10px 300px 10px 0px;hover:{text-decoration:none;}"><img src="/resources/img/loginIcon.png" style="width:35px;padding:0px 0px 0px 0px;hover:{text-decoration:none;}"></a>
			
		</u:notLogin>
	
			<strong><a href="/talk/talkList"style="color:blue;float:right;padding:10px 70px 10px 10px;text-decoration:none;color:#0098FF;font-family: sans-serif;"><img src="/resources/img/talklink.PNG" style="width:58px;"></a></strong>
			
			<strong><a href="/board/tipList"style="color:blue;float:right;padding:10px 70px 10px 10px;text-decoration:none;color:#0098FF;font-family: sans-serif;"><img src="/resources/img/tiplink.PNG"></a></strong>
		<strong><a href="/say/sayList" style="color:blue;float:right;padding:10px 70px 10px 10px;text-decoration:none;color:#0098FF;font-family: sans-serif"><img src="/resources/img/saylink.PNG"></a></strong>

		
		   
<!-- <li class="menu__group" style="visibility: visible; padding: 10px 10px;"> <a href="#"><img class="text-white" alt="logo" src="/resources/assets/css/images/envLogo.png"></a></li> -->
			<!-- <div class="footer-right">

				<a href="#"><img id="fimg" alt="" src="/resources/assets/css/images/twitter.png"></a>
				<a href="#"><img id="fimg" alt="" src="/resources/assets/css/images/facebook.png"></a>
				<a href="#"><img id="fimg" alt="" src="/resources/assets/css/images/instagram.png"></a>
				<a href="#"><img id="fimg" alt="" src="/resources/assets/css/images/github.png"></a>

			</div> -->

			<!-- <div class="footer-left"> -->

				<!-- <p class="footer-links">
				
				
					<a class="link-1" href="#">Home</a>

					<a href="#">Blog</a>

					<a href="#">Pricing</a>

					<a href="#">About</a>

					<a href="#">Faq</a>

					<a href="#">Contact</a>
				</p> -->
			<!-- </div> -->

		</footer>