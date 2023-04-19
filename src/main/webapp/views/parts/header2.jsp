<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.AccountBeans"%>
<%
// Servletのデータ受け取り
	int intUserNo = 0;
	int intType = 0;
	AccountBeans ab = new AccountBeans();
    if (session != null && session.getAttribute("account") != null) {
    	ab = (AccountBeans) session.getAttribute("account");
    	intUserNo = ab.getUser_no();
    	intType	= ab.getType();
    }
%>
<header>
	<h1 id="logo">
		<a href="index.jsp"><img src="<%=request.getContextPath()%>/views/images/logo.png" alt="FoodTrackMapper"></a>
	</h1>
</header>

<div class="loginbox">
	<% if(intUserNo>0){ %>
	<form name="logout">
		<input type="hidden" id="logoutpath" value="<%=request.getContextPath()%>/Logout">
		<a id="logoutuser" href="#" class="logout">ログアウト</a>
	</form>
	<form name="user">
		<input type="hidden" name="user_no" value="<%=intUserNo%>">
		<input type="hidden" name="detailFlg" value="1">
		<input type="hidden" id="userpath" value="<%=request.getContextPath()%>/RouteDetail">
		<a id="loginuser" href="#" class="userpage">ユーザーページ</a>
	</form>
		<% if(intType == 1) { %>
		<form name="foodtrack">
			<input type="hidden" name="user_no" value="<%=intUserNo%>">
			<input type="hidden" name="detailFlg" value="3">
			<input type="hidden" id="foodtrackpath" value="<%=request.getContextPath()%>/RouteDetail">
			<a id="foodtrack" href="#" class="foodtrack">フードトラック一覧</a>
		</form>
		<%} %>
	<% } else {	%>
	<a href="login.jsp" class="login">ログイン</a>
	<% } %>
</div>