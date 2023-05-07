<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="register">
	<div>
		評価点：<select name="point" id="point">
		    <option value="0" selected>点数を選択してください</option>
		    <option value="1">1</option>
		    <option value="2">2</option>
		    <option value="3">3</option>
		    <option value="4">4</option>
		    <option value="5">5</option>
		</select>
	</div>
	<div>タイトル：<input type="text" name="review_title"></div>
	<div>内容：<textarea rows="10" cols="60" name="review_content"></textarea></div>
</div>
<input type="hidden" name="foodtrack_no" value="<c:out value="${FoodTrackDetail.foodtrack_no}" />">

<script>
</script>