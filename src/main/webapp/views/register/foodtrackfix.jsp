<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.FoodTrackBeans"%>
<%
FoodTrackBeans ftb = (FoodTrackBeans) request.getAttribute("FoodTrackDetail");
%>
<div class="register">
<p>フードトラックID:<input type="text" name="foodtrack_id" value="<%= ftb.getFoodtrack_id() %>" required></p>
<p>フードトラック名:<input type="text" name="foodtrack_name" value="<%= ftb.getFoodtrack_name() %>" required></p>
<p>提供物種類:<input type="text" name="food_type" value="<%= ftb.getFoodtrack_id() %>" required></p>
<p>最寄り駅:<input type="text" name="station" value="<%= ftb.getFoodtrack_id() %>" required></p>
<p>位置情報:<input type="text" name="access_info" value="<%= ftb.getFoodtrack_id() %>" required></p>
<p>電話番号:<input type="text" name="tel_no" value="<%= ftb.getFoodtrack_id() %>" required></p>
<p>コメント:<input type="text" name="comment" value="<%= ftb.getFoodtrack_id() %>" ></p>
<p>写真:<input type="text" name="image" value="<%= ftb.getFoodtrack_id() %>" ></p>
<p>カテゴリ:<input type="text" name="category" value="<%= ftb.getFoodtrack_id() %>" ></p>
<input type="hidden" name="foodtrack_no" value="<%= ftb.getFoodtrack_no() %>">
</div>