<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Servletのデータ受け取り
	int intUserNo = 0;
    if (session != null && session.getAttribute("userNo") != null) {
		intUserNo = (int) session.getAttribute("userNo");
    }
%>
<script>
	var ahref = document.getElementById('loginuser');

	ahref.addEventListener('click', function() {
		alert(document.myform.mytext.value);

		document.myform.action = request.getContextPath() + "/InfoDisplay";
		document.myform.method = "post";
		document.myform.submit();
	})
	
	var alogout = document.getElementById('logoutuser');

	alogout.addEventListener('click', function() {
		alert(document.logout.mytext.value);

		document.logout.action = request.getContextPath() + "/Logout";
		document.logout.method = "get";
		document.logout.submit();
	})
</script>
<header>
	<% if(intUserNo>0){ %>
	<form name="myform">
		<input type="hidden" name="user_no" value="<%=intUserNo%>">
		<a id="loginuser" href="#" class="login">ユーザーページ</a>
	</form>
	<form name="logout">
		<a id="logoutuser" href="#" class="login">ログアウト</a>
	</form>
	<% } else {	%>
	<a href="login.jsp" class="login">ログイン</a>
	<% } %>
	<h1 id="logo">
		<a href="index.jsp"><img src="images/logo.png"
			alt="FoodTrackMapper"></a>
	</h1>
</header>
<nav id="header-menu">
	<ul>
		<li><a href="info.jsp">施設のご案内<i class="fas fa-info-circle"></i></a></li>
		<li><a href="shopping.jsp">お買い物<i
				class="fas fa-shopping-basket"></i></a></li>
		<li><a href="event.jsp">イベント<i class="far fa-calendar-alt"></i></a></li>
		<li><a href="access.jsp">アクセス<i class="fas fa-map-marker-alt"></i></a></li>
	</ul>
</nav>