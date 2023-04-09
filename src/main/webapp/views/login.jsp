<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<form action="/test/AccountSearch" method="post">
						ユーザーID：<input type="text" name="loginId" required><br>
						パスワード：<input type="password" name="pass" required><br>
						<input type="submit" value="ログイン"><br>
					</form>
					<p>
						アカウント登録がお済みでない方はこちらへ↓<br> <a href="register.jsp"><button>新規登録</button></a>
					</p>
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
