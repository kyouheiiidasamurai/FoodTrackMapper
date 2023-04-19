/**
 * 
 */
window.addEventListener('onload', function(){
	const ashop = document.getElementById('shopinfo');
	ashop.addEventListener('click', function() {
	
		document.shopinfoform.action = document.getElementById("shopinfopath").value;
		document.shopinfoform.method = "post";
		document.shopinfoform.submit();
	})
	
	
	const alogout = document.getElementById('logoutuser');
	alogout.addEventListener('click', function() {
	
		document.logout.action = document.getElementById("logoutpath").value;
		document.logout.method = "get";
		document.logout.submit();
	})
	
	const alogin = document.getElementById('loginuser');
	alogin.addEventListener('click', function() {
	alert('test');
		document.user.action = document.getElementById("userpath").value;
		document.user.method = "post";
		document.user.submit();
	})
	
	const afoodtrack = document.getElementById('foodtrack');
	afoodtrack.addEventListener('click', function() {
	alert('test');
	
		document.foodtrack.action = document.getElementById("foodtrackpath").value;
		document.foodtrack.method = "post";
		document.foodtrack.submit();
	})
})