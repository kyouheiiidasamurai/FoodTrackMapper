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
	<jsp:include page="header.jsp" flush="true" />
	<div id="container">
		<main>
			<section>
				<div class="c">
					<form action="/test/DataRegister" method="post">
						<p>すべて入力してください</p>
						<p>
							<input type="radio" name="role" value="1"><span>管理者で登録する</span>
							<input type="radio" name="role" value="2" checked><span>ユーザーで登録する</span>
						</p>
						<p>
							ユーザーID ：<input type="text" name="user_id" required>
						</p>
						<p>
							氏名 ：<input type="text" name="user_name" required>
						</p>
						<p>
							メールアドレス ：<input type="text" name="mail_address" required>
						</p>
						<p>
							パスワード ：<input type="password" name="password" required>
						</p>
						<p>
							種別 ：<input type="text" name="type" required>
						</p>
						<p>
							生年月日：<input type="text" name="birth_date" required>
						</p>
						<p>
							性別 ：<input type="text" name="name" required>
						</p>
						<p>
							血液型 ：<input type="text" name="name" required>
						</p>
						<p>
							職業 ：<input type="text" name="name" required>
						</p>
						<p>
							郵便番号 ：<input type="text" name="name" required>
						</p>
						<p>
							都道府県 ：<input type="text" name="name" required>
						</p>
						<p>
							市町村 ：<input type="text" name="name" required>
						</p>
						<p>
							番地 ：<input type="text" name="name" required>
						</p>
						<p>
							建物名 ：<input type="text" name="name" required>
						</p>
						<input type="hidden" name="type" value="<%=intRoute%>"> <input
							type="submit" value="登録"><br>
					</form>
				</div>
			</section>
		</main>
		<jsp:include page="footer.jsp" flush="true" />
		<jsp:include page="menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
	<!--jQueryの読み込み-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!--パララックス（inview）-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js"></script>
	<script src="js/jquery.inview_set.js"></script>
	<!--このテンプレート専用のスクリプト-->
	<script src="js/main.js"></script>
	<!--ページの上部へ戻るボタン-->
	<div class="pagetop">
		<a href="#"><i class="fas fa-angle-double-up"></i></a>
	</div>
</body>
</html>
