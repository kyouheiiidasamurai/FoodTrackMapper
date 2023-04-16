<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="beans.FoodTrackBeans"%>
<%@ page import="java.util.List"%>
<%
List<FoodTrackBeans> ftbList = (List<FoodTrackBeans>) request.getAttribute("returnAbsList");
int ftno = 1;
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>FoodTrackMapper</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="FoodTrackMapper">
<link rel="stylesheet" href="css/style.css">

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
	<!--jQueryの読み込み-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!--パララックス（inview）-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js"></script>
	<script src="js/jquery.inview_set.js"></script>
	<!--このテンプレート専用のスクリプト-->
	<script src="js/main.js"></script>
	<!--ページの上部へ戻るボタン-->
	<div class="pagetop">
		<a href="#"><i class="fas fa-angle-double-up"></i></a>
	</div>
</body>
</html>
