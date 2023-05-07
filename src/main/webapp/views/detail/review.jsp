<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main>
	<section>
		<h2 class="flag">
			レビュー一覧<span>Information</span>
		</h2>
		
		<div class="c center_width">
			<table border="2">
			<c:forEach items="${ReviewList}" var="rl" varStatus="status">
				<tr>
					<td><c:out value="${rl.review_title}" /></td>
					<td><c:out value="${rl.review_content}" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:out value="${rl.point}" /></td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
	</section>
		<form class="c" action="<%=request.getContextPath()%>/RouteRegister" method="post">
			<input type="hidden" name="foodtrack_no" value="<c:out value="${foodtrack_no}" />">
			<input type="hidden" name="route" value="5">
			<input type="submit" value="レビュー登録">
		</form>
</main>