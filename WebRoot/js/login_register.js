$(function() {
	$(".close a").click(function() {

		$(".login_form").hide();
		$(".toplist").css("display", "block");

	});
	$(".register_a").click(function() {
		$(".register_form").css("display", "block");
		$(".login_form").hide();

	});
	$(".closeregister a").click(function() {
		$(".register_form").hide();
		// $(".toplist").css("display", "block");
	});
	$(".registertilte a").click(function() {
		$(".register_form").hide();
		$(".login_form").show();
	});

	$(".login_submit_a").click(function() {
		var username = $.trim($(".username").val());
		var psw = $.trim($(".password").val());
		if (username == "") {
			layer.tips('用户名必填', $(".username"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".username").focus();
			return;
		}
		if (psw == "") {
			layer.tips('密码不为空', $(".password"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".password").focus();
			return;
		}
		$(".login_form").submit();
	});

	$(".registersubmit").click(function() {

		var rusername = $.trim($(".rusername").val());
		var rpsw = $.trim($(".rpassword").val());
		var repsw = $.trim($(".repassword").val());
		var rnick = $.trim($(".rnickname").val());
		var rquest = $.trim($(".rquestion").val());
		var ranswer = $.trim($(".ranswer").val());

		if (rusername == "") {
			layer.tips('用户名必填', $(".rusername"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".rusername").focus();

			return;

		}
		if (rpsw == "") {
			layer.tips('密码不为空', $(".rpassword"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".rpassword").focus();
			return;

		}
		if (repsw == "") {
			layer.tips('确认密码不为空', $(".rrepassword"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".rrepassword").focus();
			return;

		} else if (rpsw != repsw) {
			$(".rrepassword").val("");
			layer.tips('请保证密码一致', $(".rrepassword"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".rrepassword").focus();
			return;

		}

		if (rnick == "") {
			layer.tips('请输入昵称', $(".rnickname"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".rickname").focus();
			return;

		}

		if (rquest == "") {
			layer.tips('保护问题必填', $(".requestion"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".requestion").focus();
			return;
		}
		if (ranswer == "") {
			layer.tips('保护问题必填', $(".ranswer"), {
				tips : [ 1, '#34495E' ],
				time : 2000
			});
			$(".ranswer").focus();
			return;
		}
		$(".register_form").submit();
	});

});