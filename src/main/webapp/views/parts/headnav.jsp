<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script>
	var ahref = document.getElementById('shopinfo');

	ahref.addEventListener('click', function() {
		alert(document.myform.mytext.value);

		document.myform.action = request.getContextPath() + "/RouteDetail";
		document.myform.method = "post";
		document.myform.submit();
	})
</script>
<nav id="header-menu">
	<ul>
		<li>
			<form name="map">
				<a id="shopinfo" href="#">FoodTrack<i class="fas fa-info-circle"></i></a>
			</form>
		</li>
		<li><a href="shopping.jsp">お買い物<i class="fas fa-shopping-basket"></i></a></li>
		<li><a href="event.jsp">イベント<i class="far fa-calendar-alt"></i></a></li>
		<li><a href="access.jsp">アクセス<i class="fas fa-map-marker-alt"></i></a></li>
	</ul>
</nav>