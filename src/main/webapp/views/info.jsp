<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<jsp:include page="parts/head.jsp" flush="true" />
</head>
<body>
	<jsp:include page="parts/header.jsp" flush="true" />
	<div id="container">
		<jsp:include page="parts/headnav.jsp" flush="true" />
		<main>
			<section>
				<div>
					<script src="<%=request.getContextPath()%>/views/js/mapapi.js"></script>
					<div id="map" style="width:auto; height:600px"></div>
					<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD36i8JLHnfemsPOUBxZHV5IBOiQ92GY2U&callback=initMap"></script>
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
							<c:forEach items="${returnFtbList}" var="ftb" varStatus="status">
								<tr>
									<td><c:out value="${status.count}" /></td>
									<td><c:out value="${ftb.foodtrack_name}" /></td>
									<td><c:out value="${ftb.station}" /></td>
									<td><c:out value="${ftb.point}" /></td>
									<td>
										<form method="post" name="shopdetail" action="<%=request.getContextPath()%>/RouteDetail">
											<input type="hidden" name="detailFlg" value="2">
											<input type="hidden" name="foodtrack_no" value="<c:out value="${ftb.foodtrack_no}" />">
											<a href="javascript:shopdetail.submit()">詳細</a>
										</form>
									</td>
								</tr>
							 </c:forEach>
					</table>
					<a href="#">他を調べる</a>
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
