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
	<jsp:include page="parts/header.jsp" flush="true" />
	<div id="container">
		<jsp:include page="parts/headnav.jsp" flush="true" />
		<main>
			<% if (intRoute == 2) { %>
			<jsp:include page="detail/user.jsp" flush="true" />
			<% } else if (intRoute == 1) { %>
			<jsp:include page="detail/owner.jsp" flush="true" />
			<% } else if (intRoute == 3) { %>
			<jsp:include page="detail/foodtrack.jsp" flush="true" />
			<% } %>
		</main>
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
		<jsp:include page="parts/footercommon.jsp" flush="true" />
</body>
</html>
