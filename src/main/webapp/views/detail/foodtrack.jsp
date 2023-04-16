<%@ page import="beans.FoodTrackBeans"%>
<%
FoodTrackBeans ftb = (FoodTrackBeans) request.getAttribute("FoodTrackDetail");
%>
<main>
	<section>
		<h2 class="flag">
			フードトラック情報<span>Information</span>
		</h2>
		<div class="c center_width">
			<p>
				フードトラック名：<%=ftb.getFoodtrack_name()%></p>
			<p>
				提供物種類：<%=ftb.getFood_type()%></p>
			<p>
				最寄り駅：<%=ftb.getStation()%></p>
			<p>
				電話番号：<%=ftb.getTel_no()%></p>
			<p>
				コメント：<%=ftb.getComment_text()%></p>
			<p>
				カテゴリ：<%=ftb.getCategory()%></p>
			<p>
				評価数：<%=ftb.getPoint()%></p>
		</div>
	</section>
	<form action="<%=request.getContextPath()%>/DataRegister" method="post">
		<input type="hidden" name="foodtrack_no" value="<%=ftb.getFoodtrack_no()%>">
		<input type="submit" value="レビュー">
	</form>
</main>