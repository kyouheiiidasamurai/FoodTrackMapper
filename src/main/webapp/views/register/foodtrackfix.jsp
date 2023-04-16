<%@ page import="beans.FoodTrackBeans"%>
<%
FoodTrackBeans ftb = (FoodTrackBeans) request.getAttribute("FoodTrackDetail");
%>
<p>フードトラックID:<input type="text" name="foodtrack_id" value="<%= ftb.getFoodtrack_id() %>" required>
<p>フードトラック名:<input type="text" name="foodtrack_name" value="<%= ftb.getFoodtrack_name() %>" required>
<p>提供物種類:<input type="text" name="food_type" value="<%= ftb.getFoodtrack_id() %>" required>
<p>最寄り駅:<input type="text" name="station" value="<%= ftb.getFoodtrack_id() %>" required>
<p>位置情報:<input type="text" name="access_info" value="<%= ftb.getFoodtrack_id() %>" required>
<p>電話番号:<input type="text" name="tel_no" value="<%= ftb.getFoodtrack_id() %>" required>
<p>コメント:<input type="text" name="comment" value="<%= ftb.getFoodtrack_id() %>" >
<p>写真:<input type="text" name="image" value="<%= ftb.getFoodtrack_id() %>" >
<p>カテゴリ:<input type="text" name="category" value="<%= ftb.getFoodtrack_id() %>" >
<%
// Servletのデータ受け取り
int intUserNo = (int) session.getAttribute("userNo");
%>
<input type="hidden" name="user_no" value="<%= intUserNo %>">
<input type="hidden" name="foodtrack_no" value="<%= ftb.getFoodtrack_no() %>">