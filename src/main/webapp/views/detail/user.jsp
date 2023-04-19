<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.AccountBeans"%>
<%
AccountBeans ab = (AccountBeans) request.getAttribute("AccountDetail");
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
			<form action="<%=request.getContextPath()%>/DataRegister" method="post">
				<input type="hidden" name="route" value="3">
				<input type="submit" value="アカウント修正">
			</form>
		</div>
	</section>
</main>