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
		<a href="<%=request.getContextPath()%>/views/index.jsp"><img src="<%=request.getContextPath()%>/views/images/logo.png" alt="FoodTrackMapper"></a>
	</h1>
</header>

<div class="loginbox">
	<% if(intUserNo>0){ %>

		<form method="get" name="logout" action="<%=request.getContextPath()%>/Logout">
		    <input type="hidden" name="user_name" value="名前">
		    <a href="javascript:logout.submit()" class="logout">ログアウト</a>
		</form>
		<form method="post" name="user" action="<%=request.getContextPath()%>/RouteDetail">
			<input type="hidden" name="detailFlg" value="1">
		    <a href="javascript:user.submit()" class="userpage">ユーザーページ</a>
		</form>
		<% if(intType == 1) { %>
			<form method="post" name="foodtrack" action="<%=request.getContextPath()%>/RouteDetail">
				<input type="hidden" name="detailFlg" value="3">
			    <a href="javascript:foodtrack.submit()" class="foodtrack">フードトラック一覧</a>
			</form>
		<%} %>
	<% } else {	%>
	<a href="<%=request.getContextPath()%>/views/login.jsp" class="login">ログイン</a>
	<% } %>
</div>