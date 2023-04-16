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
				<h2>inviewサンプル</h2>
				<p>jsフォルダのjquery.inview_set.jsや、cssフォルダのinview.cssで内容の変更や追加ができます。</p>
				<p>
					新規で作成されるページにもアニメーション効果を使いたい場合、当ページのhtml側下部にある、<br> <span
						class="look">&lt;!--パララックス（inview）--&gt;<br>
						&lt;script
						src=&quot;https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js&quot;&gt;&lt;/script&gt;<br>
						&lt;script
						src=&quot;js/jquery.inview_set.js&quot;&gt;&lt;/script&gt;
					</span><br> を同じ場所にコピペして下さい。これらのタグがないとアニメーションは動きません。<br>
					また、長期間利用していると、inviewのバージョンが古くなって動かなくなる可能性もあります。その際は「CDN
					inview」などで検索しなおしてみて下さい。
				</p>
				<h3>upスタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;up&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">up</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list up">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list up">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list up">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list up">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>downスタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;down&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">down</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list down">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list down">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list down">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list down">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>leftスタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;left&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">left</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list left">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list left">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list left">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list left">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>rightスタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;right&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">right</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list right">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list right">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list right">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list right">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>transform1スタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;transform1&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">transform1</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list transform1">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform1">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform1">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform1">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>transform2スタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;transform2&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">transform2</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list transform2">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform2">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform2">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform2">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>transform3スタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;transform3&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">transform3</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list transform3">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform3">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform3">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list transform3">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
				</div>
				<!--/.list-container-->
				<h3>blurスタイル</h3>
				<p>
					使いたい要素に<span class="color-check">class=&quot;blur&quot;</span>を指定すれば以下のような動作になります。<br>
					既にclass指定がある場合は半角スペースで区切って追加します。例：&lt;div class=&quot;list <span
						class="color-check">blur</span>&quot;&gt;
				</p>
				<div class="list-container">
					<div class="list blur">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list blur">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list blur">
						<figure>
							<img src="images/sample1.jpg" alt="">
						</figure>
						<div class="text">
							<h4>Sample Title</h4>
							<p>ここに説明を入れます。サンプルテキスト。</p>
						</div>
					</div>
					<div class="list blur">
						<figure>
							<img src="images/sample1.jpg" alt="">
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
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
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
