<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="beans.FoodTrackBeans"%>
<%
	FoodTrackBeans ftb = (FoodTrackBeans) request.getAttribute("FoodTrackDetail");
%>
<main>
	<section>
		<h2 class="flag">
			フードトラック情報<span>Information</span>
		</h2>
		
		<div class="c center_width">
			<p>
				フードトラック名：<c:out value="${FoodTrackDetail.foodtrack_name}" /></p>
			<p>
				提供物種類：<c:out value="${FoodTrackDetail.food_type}" /></p>
			<p>
				最寄り駅：<c:out value="${FoodTrackDetail.station}" /></p>
			<p>
				電話番号：<c:out value="${FoodTrackDetail.tel_no}" /></p>
			<p>
				コメント：<c:out value="${FoodTrackDetail.comment_text}" /></p>
			<p>
				カテゴリ：<c:out value="${FoodTrackDetail.category}" /></p>
			<p>
				評価数：<c:out value="${FoodTrackDetail.point}" /></p>
		</div>
		<form class="c" action="<%=request.getContextPath()%>/RouteRegister" method="post">
			<input type="hidden" name="foodtrack_no" value="<c:out value="${FoodTrackDetail.foodtrack_no}" />">
			<input type="hidden" name="route" value="5">
			<input type="submit" value="レビュー">
		</form>
	</section>
</main>