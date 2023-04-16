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
	<jsp:include page="parts/header.jsp" flush="true" />
	<div id="container">
	<jsp:include page="parts/headnav.jsp" flush="true" />
		<main>
			<section>
				<h2 class="flag">
					お買い物<span>Shopping</span>
				</h2>
				<p class="c">
					ここで使う画像は「正方形」で準備するときれいに揃って見えます。<br>
					正方形でない場合は「同じ縦横比率」の画像を並べておくでもOKです。
				</p>
				<p class="c">
					ブロック全体を囲んでいる「list-container」タグを入れ忘れないで下さい。<br>
					これがないとレイアウトが崩れます。
				</p>
				<p class="c">
					出現してくるアニメーションは他にも色々ご用意しております。<br> テンプレート内の<a
						href="sample_inview.jsp">sample_inview.jspをお読み下さい。</a>
				</p>
				<div class="list-container">
					<div class="list-square blur">
						<figure>
							<img src="images/sample6.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
						<span class="icon">おすすめ</span>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample7.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample8.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample7.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample8.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample6.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample6.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample7.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample8.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample7.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample8.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list-square blur">
						<figure>
							<img src="images/sample6.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
			</section>
		</main>
		<div id="footermenu">
			<ul>
				<li class="title">メニュー</li>
				<li><a href="index.jsp">ホーム</a></li>
				<li><a href="company.jsp">運営会社</a></li>
				<li><a href="info.jsp">施設のご案内</a></li>
				<li><a href="shopping.jsp">お買い物</a></li>
				<li><a href="event.jsp">イベント</a></li>
				<li><a href="access.jsp">アクセス</a></li>
			</ul>
			<ul>
				<li class="title">メニュー見出し</li>
				<li><a href="#">サンプルメニューサンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
			</ul>
			<ul>
				<li class="title">メニュー見出し</li>
				<li><a href="#">サンプルメニューサンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
			</ul>
			<ul>
				<li class="title">メニュー見出し</li>
				<li><a href="#">サンプルメニューサンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
				<li><a href="#">サンプルメニュー</a></li>
			</ul>
		</div>
		<!--/#footermenu-->
		<footer>
			<small>Copyright&copy; <a href="index.jsp">道の駅</a> All Rights
				Reserved.
			</small> <span class="pr"><a href="https://template-party.com/"
				target="_blank">《Web Design:Template-Party》</a></span>
		</footer>
		<!--開閉ブロック-->
		<div id="menubar">
			<nav>
				<ul>
					<li><a href="index.jsp">ホーム</a></li>
					<li><a href="info.jsp">施設のご案内</a></li>
					<li><a href="shopping.jsp">お買い物</a></li>
					<li><a href="event.jsp">イベント</a></li>
					<li><a href="access.jsp">アクセス</a></li>
				</ul>
			</nav>
			<p class="btn">
				<a href="contact.jsp">お問い合わせ</a>
			</p>
			<div class="sh">
				<p>
					※900px未満のメニュー開閉時にのみ表示させたい情報があればここ（shボックスの中）に入れて下さい。<br>
					サンプルテキスト。サンプルテキスト。<br> サンプルテキスト。サンプルテキスト。<br>
					サンプルテキスト。サンプルテキスト。
				</p>
			</div>
			<!--/.sh-->
		</div>
		<!--/#menubar-->
		<!--開閉ボタン（ハンバーガーアイコン）-->
		<div id="menubar_hdr">
			<div>
				<span></span><span></span><span></span>
			</div>
			<p>MENU</p>
		</div>
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
