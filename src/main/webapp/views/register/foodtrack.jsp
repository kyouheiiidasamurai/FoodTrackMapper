<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<p>フードトラックID:<input type="text" name="foodtrack_id" required>
<p>フードトラック名:<input type="text" name="foodtrack_name" required>
<p>提供物種類:<input type="text" name="food_type" required>
<p>最寄り駅:<input type="text" name="station" required>
<p>位置情報:<input type="text" name="access_info" required>
<p>電話番号:<input type="text" name="tel_no" required>
<p>コメント:<input type="text" name="comment" >
<p>写真:<input type="text" name="image" >
<p>カテゴリ:<input type="text" name="category" >
<%
// Servletのデータ受け取り
int intUserNo = (int) session.getAttribute("userNo");
%>
<input type="hidden" name="user_no" value="<%= intUserNo %>">