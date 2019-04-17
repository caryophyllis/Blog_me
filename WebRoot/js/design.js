	$(function() {
		$(".toplist").css("display", "block");
		$(".login_form").hide();
		$(".listlogin").click(function() {

			$(".login_form").show();
			$(".register_form").hide();

		});
		$(".listregister").click(function() {
			$(".register_form").css("display", "block");
			$(".login_form").hide();

		});
		$(".closeregister a").click(function() {
			$(".register_form").hide();
			
		});
		$(".registertilte a").click(function() {
			$(".register_form").hide();
		});

		$(".settingmenu").mouseover(function() {
			$(".list").css("display", "block");
		});
		$(".list").mouseleave(function() {
			$(".list").css("display", "none");
		});

	});