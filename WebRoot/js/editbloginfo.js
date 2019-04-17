$(function() {
	$(".settingmenu").mouseover(function() {
		$(".list").css("display", "block");
	});
	$(".list").mouseleave(function() {
		$(".list").css("display", "none");
	});
	
	$(".editbloginfo_submit").click(function(){
		$(".left_content").hide();
		$(".center_content").css("width","80%");
	});
});