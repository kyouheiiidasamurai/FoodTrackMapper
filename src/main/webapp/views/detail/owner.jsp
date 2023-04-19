<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="beans.AccountBeans"%>
<%@ page import="beans.FoodTrackBeans"%>
<%@ page import="java.util.List"%>
<%
AccountBeans ab = (AccountBeans) request.getAttribute("AccountDetail");
List<FoodTrackBeans> ftbList = (List<FoodTrackBeans>) request.getAttribute("returnFtbList");
int intType = ab.getType();
%>
<main>
	<section>
		<h2 class="flag">
			ユーザー情報<span>Information</span>
		</h2>
		<div class="c center_width">
			<p>ショップオーナー</p>
			<p>
				ユーザーID ：<%=ab.getUser_id()%></p>
			<p>
				氏名 ：<%=ab.getUser_name()%></p>
			<p>
				メールアドレス ：<%=ab.getMail_address()%></p>
			<p>
				パスワード ：<%=ab.getPassword()%></p>
			<p>
				生年月日：<%=ab.getBirth_date()%></p>
			<p>
				性別 ：<%=ab.getGender()%></p>
			<p>
				血液型 ：<%=ab.getBlood_type()%></p>
			<p>
				職業 ：<%=ab.getJob()%></p>
			<p>
				郵便番号 ：<%=ab.getPost_code()%></p>
			<p>
				都道府県 ：<%=ab.getPrefectures()%></p>
			<p>
				市町村 ：<%=ab.getMunicipality()%></p>
			<p>
				番地 ：<%=ab.getAddress()%></p>
			<p>
				建物名 ：<%=ab.getBuilding_name()%></p>
			<form action="<%=request.getContextPath()%>/RouteRegister" method="post">
				<input type="hidden" name="user_no" value="<%=ab.getUser_no()%>">
				<input type="hidden" name="route" value="3">
				<input type="submit" value="アカウント修正">
			</form>
		</div>
		<div class="c">
			<h2>
				フードトラック情報一覧<span>Information</span>
			</h2>
			<table border="2">
				<tr>
					<th>番号</th>
					<th>店名</th>
					<th>詳細</th>
				</tr>
				<c:forEach items="${returnFtbList}" var="ftb" varStatus="status">
					<tr>
						<td><c:out value="${status.count}" /></td>
						<td><c:out value="${ftb.foodtrack_name}" /></td>
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

			<form action="<%=request.getContextPath()%>/RouteRegister"
				method="post">
				<input type="hidden" name="route" value="2">
				<input type="submit" value="フードトラック情報登録">
			</form>
		</div>
	</section>
</main>