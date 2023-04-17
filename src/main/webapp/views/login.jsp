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
			<section>
				<div class="c">
					<form action="<%=request.getContextPath()%>/AccountSearch" method="post">
						ユーザーID：<input type="text" name="userId" required><br>
						パスワード：<input type="password" name="password" required><br>
						<input type="submit" value="ログイン"><br>
					</form>
					<div>
						<form action="<%=request.getContextPath()%>/RouteRegister" method="post">
							<p>アカウント登録がお済みでない方はこちらへ↓</p>
							<input type="hidden" name="route" value="1">
							<input type="submit" value="アカウント登録">
						</form>
					</div>
				</div>
			</section>
		</main>
		<jsp:include page="parts/footer.jsp" flush="true" />
		<jsp:include page="parts/menubar.jsp" flush="true" />
	</div>
	<!--/#container-->
	<jsp:include page="parts/footercommon.jsp" flush="true" />
</body>
</html>
