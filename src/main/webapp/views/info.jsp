<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="beans.FoodTrackBeans"%>
<%@ page import="java.util.List"%>
<%
request.setCharacterEncoding("UTF8");
List<FoodTrackBeans> ftbList = (List<FoodTrackBeans>) request.getAttribute("returnAbsList");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<jsp:include page="parts/head.jsp" flush="true" />
<script>
	var ahref = document.getElementById('shopinfo');

	ahref.addEventListener('click', function() {
		alert(document.myform.mytext.value);

		document.myform.action = request.getContextPath() + "/RouteDetail";
		document.myform.method = "post";
		document.myform.submit();
	})
</script>
</head>
<body>
	<jsp:include page="parts/header.jsp" flush="true" />
	<div id="container">
		<jsp:include page="parts/headnav.jsp" flush="true" />
		<main>
			<section>
				<div>
					地図を表示 <img src="images/dummy_map_main.jpg" alt="">
				</div>
			</section>
			<section>
				<div>
					表示しているフードトラックの一覧
					<table border="2">
							<tr>
								<th>番号</th>
								<th>店名</th>
								<th>最寄り駅</th>
								<th>評価ポイント</th>
								<th>詳細</th>
							</tr>
							<c:forEach items="${ftbList}" var="ftb" varStatus="status">
								<tr>
									<td><c:out value="${status.count}" /></td>
									<td><c:out value="${ftb.foodtrack_name}" /></td>
									<td><c:out value="${ftb.station}" /></td>
									<td><c:out value="${ftb.point}" /></td>
									<td><form name="shopdetail">
									<input type="hidden" name="foodtrack_no" value="<c:out value="${ftb.foodtrac_no}" />">
									<a id="shopinfo "href="#">詳細</a></form></td>
								</tr>
							 </c:forEach>
					</table>
				</div>
			</section>
		</main>
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
		<jsp:include page="parts/footercommon.jsp" flush="true" />
</body>
</html>
