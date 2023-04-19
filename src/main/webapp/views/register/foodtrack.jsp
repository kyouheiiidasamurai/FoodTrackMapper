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
<div class="register">
<p>フードトラックID:<input type="text" name="foodtrack_id" required></p>
<p>フードトラック名:<input type="text" name="foodtrack_name" required></p>
<p>提供物種類:<input type="text" name="food_type" required></p>
<p>最寄り駅:<input type="text" name="station" required></p>
<p>位置情報:<input type="text" name="access_info" required></p>
<p>電話番号:<input type="text" name="tel_no" required></p>
<p>コメント:<input type="text" name="comment" ></p>
<p>写真:<input type="text" name="image" ></p>
<p>カテゴリ:<input type="text" name="category" ></p>
<input type="hidden" name="user_no" value="<%= intUserNo %>">
</div>