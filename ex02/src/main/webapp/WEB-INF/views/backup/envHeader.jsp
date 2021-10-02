<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="/resources/css/envHeaderCss.css">
 <link rel="shortcut icon" href="#">
<div class="page">


  <nav class="page__menu page__custom-settings menu" >
    <ul class="menu__list r-list">
      
       	
               
        <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
        <li class="menu__group" style="visibility: visible; padding: 10px 10px;"> <a href="/board/envMain"><img class="text-white" alt="logo" src="/resources/img/envLogo.png"></a></li>
         <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
        <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
      	 <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
       	<li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
       	<li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
       	<li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
       	<li class="menu__group" style="visibility: visible; font-size:medium;  "><a href="/say/sayList" class="menu__link r-link text-underlined">Say</a></li>
        <li class="menu__group" style="visibility: visible; font-size:medium;"><a href="/board/tipList" class="menu__link r-link text-underlined">Tip</a></li>
        <li class="menu__group" style="visibility: visible; font-size:medium;"><a href="/talk/talkList" class="menu__link r-link text-underlined">Talk</a></li>
        <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li> 
        	
        <!-- margin:50 0 px; padding: var(--menuLinkPadding, 1.5rem 1.5rem);-->
      	<u:isLogin>
      	<li class="menu__group" style="font-size:medium;visibility: visible"><p style="font-weight: 700; width:100px; margin:24px 0  26px 0; text-transform: uppercase;"href="#0" class="r-link "> ${loginMember}</p></li> 
        <li class="menu__group" style="font-size:medium;visibility: visible"><a style="font-weight: 700; margin:24px 0  0 10px; text-transform: uppercase;"  href="/member/logout" class=" r-link ">[LogOut]</a></li>    
		</u:isLogin>
		<u:notLogin>
		<li class="menu__group" style=" font-size:medium; visibility: visible"><a href="/member/login" class="menu__link r-link ">[Login]</a></li> 
		</u:notLogin>
       	 <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>       
        <li class="menu__group" style="visibility: hidden;" ><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
        <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
        <li class="menu__group" style="visibility: hidden"><a href="#0" class="menu__link r-link text-underlined">Option </a></li>
        
      	
        
    </ul>
  </nav>
</div>
