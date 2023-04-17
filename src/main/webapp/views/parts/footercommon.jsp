<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!--jQueryの読み込み-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!--パララックス（inview）-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js"></script>
	<script src="<%=request.getContextPath()%>/views/js/jquery.inview_set.js"></script>
	<!--このテンプレート専用のスクリプト-->
	<script src="<%=request.getContextPath()%>/views/js/main.js"></script>
	<!--ページの上部へ戻るボタン-->
	<div class="pagetop">
		<a href="#"><i class="fas fa-angle-double-up"></i></a>
	</div>