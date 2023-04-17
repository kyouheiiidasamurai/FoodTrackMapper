<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="register">
<p>必須項目は、すべて入力してください</p>
<p>
	<input type="radio" name="type" value="1"><span>管理者で登録する</span>
	<input type="radio" name="type" value="2" checked><span>ユーザーで登録する</span>
</p>
<p>
	ユーザーID(必須) ：<input type="text" name="user_id" required>
</p>
<p>
	氏名(必須) ：<input type="text" name="user_name" required>
</p>
<p>
	メールアドレス(必須) ：<input type="text" name="mail_address" required>
</p>
<p>
	パスワード(必須) ：<input type="password" name="password" required>
</p>
<p>
	生年月日：<input type="text" name="birth_date">
</p>
<p>
	性別 ：
	<input type="radio" name="gender" value="1"><span>男</span>
	<input type="radio" name="gender" value="2"><span>女</span>
</p>
<p>
	血液型 ：<input type="text" name="blood_type">
</p>
<p>
	職業 ：<input type="text" name="job">
</p>
<p>
	郵便番号 ：<input type="text" name="post_code">
</p>
<p>
	都道府県 ：<input type="text" name="prefectures">
</p>
<p>
	市町村 ：<input type="text" name="municipality">
</p>
<p>
	番地 ：<input type="text" name="address">
</p>
<p>
	建物名 ：<input type="text" name="building_name">
</p>
</div>