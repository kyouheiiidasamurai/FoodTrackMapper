<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.AccountBeans"%>
<%
// Servletのデータ受け取り
	int intUserNo = 0;
	AccountBeans ab = new AccountBeans();
    if (session != null && session.getAttribute("account") != null) {
    	ab = (AccountBeans) session.getAttribute("account");
    	intUserNo = ab.getUser_no();
    }
%>
<script>
	var ahref = document.getElementById('loginuser');

	ahref.addEventListener('click', function() {

		document.myform.action = document.getElementByName("myformpath").value;
		document.myform.method = "post";
		document.myform.submit();
	})
	
	var alogout = document.getElementById('logoutuser');

	alogout.addEventListener('click', function() {

		document.logout.action = document.getElementByName("logoutpath").value;
		document.logout.method = "get";
		document.logout.submit();
	})
</script>
<header>
	<h1 id="logo">
		<a href="index.jsp"><img src="<%=request.getContextPath()%>/views/images/logo.png" alt="FoodTrackMapper"></a>
	</h1>
</header>

<div class="loginbox">
	<% if(intUserNo>0){ %>
	<form name="myform">
		<input type="hidden" name="user_no" value="<%=intUserNo%>">
		<input type="hidden" name="detailFlg" value="1">
		<input type="hidden" name="myformpath" value="<%=request.getContextPath()%>/RouteDetail">
		<a id="loginuser" href="#" class="userpage">ユーザーページ</a>
	</form>
	<form name="logout">
		<input type="hidden" name="logoutpath" value="<%=request.getContextPath()%>/Logout">
		<a id="logoutuser" href="#" class="logout">ログアウト</a>
	</form>
	<% } else {	%>
	<a href="views/login.jsp" class="login">ログイン</a>
	<% } %>
</div>