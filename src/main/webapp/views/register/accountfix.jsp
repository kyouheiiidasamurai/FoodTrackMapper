<%@ page import="beans.AccountBeans"%>
<%
AccountBeans ab = (AccountBeans) request.getAttribute("AccountDetail");
%>
<p>すべて入力してください</p>
<p>
	ユーザーID ：<input type="text" name="user_id" value="<%= ab.getUser_id()%>" required>
</p>
<p>
	氏名 ：<input type="text" name="user_name" value="<%= ab.getUser_name()%>" required>
</p>
<p>
	メールアドレス ：<input type="text" name="mail_address" value="<%= ab.getMail_address()%>" required>
</p>
<p>
	生年月日：<input type="text" name="birth_date" value="<%= ab.getBirth_date()%>">
</p>
<p>
	性別 ：<input type="text" name="gender" value="<%= ab.getGender()%>">
</p>
<p>
	血液型 ：<input type="text" name="blood_type" value="<%= ab.getBlood_type()%>">
</p>
<p>
	職業 ：<input type="text" name="job" value="<%= ab.getJob()%>">
</p>
<p>
	郵便番号 ：<input type="text" name="post_code" value="<%= ab.getPost_code()%>">
</p>
<p>
	都道府県 ：<input type="text" name="prefectures" value="<%= ab.getPrefectures()%>">
</p>
<p>
	市町村 ：<input type="text" name="municipality" value="<%= ab.getMunicipality()%>">
</p>
<p>
	番地 ：<input type="text" name="address" value="<%= ab.getAddress()%>">
</p>
<p>
	建物名 ：<input type="text" name="building_name" value="<%= ab.getBuilding_name()%>">
</p>
<input type="hidden" name="user_no" value="<%= ab.getUser_no() %>>">