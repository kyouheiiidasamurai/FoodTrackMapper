<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<jsp:include page="parts/head.jsp" flush="true" />
</head>
<body>
	<jsp:include page="parts/header.jsp" flush="true" />
	<div id="container">
	<jsp:include page="parts/headnav.jsp" flush="true" />
		<main>
			<article>
				<h2>フードトラック情報ページ</h2>
				<p class="c">
					<img src="images/sample4.jpg" alt="">
				</p>
				<table class="ta1">
					<caption>大見出しが必要な場合はここを使います</caption>
					<tr>
						<th>見出し</th>
						<td>ここに説明など入れて下さい。サンプルテキスト。</td>
					</tr>
					<tr>
						<th>見出し</th>
						<td>ここに説明など入れて下さい。サンプルテキスト。</td>
					</tr>
					<tr>
						<th>見出し</th>
						<td>ここに説明など入れて下さい。サンプルテキスト。</td>
					</tr>
					<tr>
						<th>見出し</th>
						<td>ここに説明など入れて下さい。サンプルテキスト。</td>
					</tr>
					<tr>
						<th>見出し</th>
						<td>ここに説明など入れて下さい。サンプルテキスト。</td>
					</tr>
				</table>
				<p class="c">
					<a href="javascript:history.back()">&lt;&lt; 前のページに戻る</a>
				</p>
			</article>
		</main>
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
		<jsp:include page="parts/footercommon.jsp" flush="true" />
</body>
</html>
