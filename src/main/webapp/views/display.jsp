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
	<jsp:include page="parts/head.jsp" flush="true" />
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
			<% } else if (intRoute == 4) { %>
			<jsp:include page="detail/foodtrackowner.jsp" flush="true" />
			<% } else if (intRoute == 5) { %>
			<jsp:include page="detail/review.jsp" flush="true" />
			<% } else if (intRoute == 6) { %>
			<jsp:include page="detail/foodtrackinfo.jsp" flush="true" />
			<% } %>
		</main>
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
		<jsp:include page="parts/footercommon.jsp" flush="true" />
</body>
</html>
