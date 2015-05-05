<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>♥My Love，情人节快乐♥</title>
	<link rel="stylesheet" type="text/css" href="http://www.w3cplus.com/demo/css3/base.css" media="all" />
	<script type="text/javascript" src="http://www.w3cplus.com/demo/css3/prefixfree.min.js"></script>
	<style>
body {
	background-color:#282828;
}	
.demo {
	margin: 40px auto 0;
	width: 170px;
	text-align: center;
}
.menu {
	position: relative;
	width: 170px;
	padding: 5px 0;
	line-height: 35px;
	border-radius: 5px;
	background: -*-linear-gradient(top,#dbdbdb,#999);
}
.menu a {
	display: block;
	color: #484848;
	text-decoration: none;
	text-shadow: 0 1px 0 #e0e0e0;
	font-size: 14px;
}
.menu li:hover a,
	.menu li:first-child a {
	color: #980202;
	text-shadow: 0 1px 0 rgba(0,0,0,.1);
}
.menu li:hover a{
	color: #fff;
}
.menu li {
	position: relative;
	z-index: 2;
}
.ribbon_wrap {
	position: absolute;
	top: 8px;
	left: -20px;
	z-index: 1;
	transition: top 0.4s;
}
.ribbon_rail {
	position: relative;
	width: 170px;
	height: 30px;
	padding: 0 20px;
	color: #e3e3e3;
	text-shadow: 0 1px 0 #6b6b6b;
	box-shadow: 0 2px 5px rgba(0,0,0,.2);
	background: -*-linear-gradient(top,#ff3f3f,#a50000);
}
.ribbon_rail:before,
	.ribbon_rail:after {
	position:absolute;
	content:"";
	top:100%;
	width:0;
	height:0;
	border: 5px solid transparent;
}
.ribbon_rail:before {
	left:0;
	border-color: #5d0f0f #5d0f0f transparent transparent;
}
.ribbon_rail:after { 
	right:0;
	border-color: #5d0f0f transparent transparent #5d0f0f;
}
.ribbon_rail > div {
	width: 100%;
}
.ribbon_rail > div:before,
	.ribbon_rail > div:after {
	content:"";
	position: absolute;
	top:10px;
	z-index: -1;
	width: 0;
	height:0;
	border-width: 14px;
	border-style: solid;
	border-color: #ff1515 #ff1515 #920000 #ff1515;
}
.ribbon_rail > div:before {
	right: 100%;
	border-left-color: transparent;
	margin-right: -10px;
}
.ribbon_rail > div:after {
	left: 100%;
	border-right-color: transparent;
	margin-left: -10px;
}
.menu li:nth-child(1):hover ~ .ribbon_wrap{ 
	top: 8px; 
}
.menu li:nth-child(2):hover ~ .ribbon_wrap{  
	top: 43px;
}
.menu li:nth-child(3):hover ~ .ribbon_wrap{  
	top: 78px; 
}
.menu li:nth-child(4):hover ~ .ribbon_wrap{
	top: 113px;
}
.menu li:nth-child(5):hover ~ .ribbon_wrap{
	top: 148px;
}
	</style>
</head>
<body>
<div class="page">
	<section class="demo">
		<ul class="menu unstyled">
			<li><a href="${pageContext.request.contextPath}/servlet/Login" title=""><strong>
			<c:if test="${sessionScope.loginShow!=null}">
				${sessionScope.loginShow}
			</c:if>
			<c:if test="${sessionScope.loginShow==null}">
				登录
			</c:if>
			</strong></a></li>
			<li><a href="${pageContext.request.contextPath}/home/iloveyou/iloveyou.html" title=""><strong>爱你</strong></a></li>
			<li><a href="${pageContext.request.contextPath}/home/album/album.html" title=""><strong>相册</strong></a></li>
			<li><a href="${pageContext.request.contextPath}/home/interest/interest.html" title=""><strong>有趣</strong></a></li>
			<li><a href="${pageContext.request.contextPath}/home/fireworks/fireworks.html" title=""><strong>烟火</strong></a></li>
			<li><a href="${pageContext.request.contextPath}/home/goodnight/goodnight.html" title=""><strong>晚安</strong></a></li>
			<div class="ribbon_wrap">
				<div class="ribbon_rail">
					<div></div>
				</div>
			</div>
		</ul>
	</section>
	<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<p class="source-url"><a href="#">My Love,情人节快乐,I love you.</a> from:xxx</p>
</div>
</body>
</html>