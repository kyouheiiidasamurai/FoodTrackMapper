<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<nav id="header-menu">
	<ul>
		<li>
			<form method="post" name="MapInfo" action="<%=request.getContextPath()%>/MapInfo">
				<a href="javascript:MapInfo.submit()">FoodTrack<i class="fas fa-info-circle"></i></a>
			</form>
		</li>
		<li><a href="<%=request.getContextPath()%>/views/shopping.jsp">お買い物<i class="fas fa-shopping-basket"></i></a></li>
		<li><a href="<%=request.getContextPath()%>/views/event.jsp">イベント<i class="far fa-calendar-alt"></i></a></li>
		<li><a href="<%=request.getContextPath()%>/views/access.jsp">アクセス<i class="fas fa-map-marker-alt"></i></a></li>
	</ul>
</nav>