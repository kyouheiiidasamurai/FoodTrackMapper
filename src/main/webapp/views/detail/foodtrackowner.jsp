<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main>
	<section>
		<h2 class="flag">
			フードトラック情報<span>Information</span>
		</h2>
		<div class="c">
			<table border="2" width="100%">
				<tr>
					<th width="15%">番号</th>
					<th width="55%">店名</th>
					<th width="15%">詳細</th>
					<th width="15%">修正</th>
				</tr>
				<c:forEach items="${returnFtbList}" var="ftb" varStatus="status">
					<tr>
						<td><c:out value="${status.count}" /></td>
						<td><c:out value="${ftb.foodtrack_name}" /></td>
						<td>
							<form method="post" name="oneft" action="<%=request.getContextPath()%>/RouteDetail">
								<input type="hidden" name="foodtrack_no" value="<c:out value="${ftb.foodtrack_no}" />">
								<input type="hidden" name="detailFlg" value="5">
								<a href="javascript:oneft.submit()">詳細</a>
							</form>
						</td>
						<td>
							<form method="post" name="shopinfoform" action="<%=request.getContextPath()%>/RouteRegister">
								<input type="hidden" name="foodtrack_no" value="<c:out value="${ftb.foodtrack_no}" />">
								<input type="hidden" name="route" value="4">
								<a href="javascript:shopinfoform.submit()">修正</a>
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<form action="<%=request.getContextPath()%>/RouteRegister" method="post">
			<input type="hidden" name="route" value="3">
			<input type="submit" value="フードトラック情報新規登録">
		</form>
	</section>
</main>