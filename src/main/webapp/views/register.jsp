<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Servletのデータ受け取り
request.setCharacterEncoding("UTF8");
int intRoute = (int) request.getAttribute("route");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>FoodTrackMapper</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="FoodTrackMapper">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	<div id="container">
		<main>
			<section>
				<div class="c">
					<form action="<%=request.getContextPath()%>/DataRegister" method="post">
						<% if(intRoute == 1) {%>
						<jsp:include page="accountregister.jsp" flush="true" />
						<% } else if (intRoute == 2) { %>
						<jsp:include page="foodtrackregister.jsp" flush="true" />
						<% } %>
						<input type="hidden" name="type" value="<%=intRoute%>"> <input
							type="submit" value="登録"><br>
					</form>
				</div>
			</section>
		</main>
		<jsp:include page="footer.jsp" flush="true" />
		<jsp:include page="menubar.jsp" flush="true" />
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
