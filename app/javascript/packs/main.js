$(window).on('scroll', function () {
	var scroll = $(window).scrollTop();
	if (scroll < 400) {
		$("#sticky-header").removeClass("sticky");
		$('#back-top').fadeIn(500);
	} else {
		$("#sticky-header").addClass("sticky");
		$('#back-top').fadeIn(500);
	}
});

$(document).ready(function () {
	document.getElementById('date').value = new Date().toISOString().substr(0, 10);
	$('#collapsibleNavbar li').click(function (event) {
		/* Act on the event */
		$(this).addClass('activel').siblings().removeClass('activel');
	});
	$("#datve").click(function () {
		/* Act on the event */
		$(".datve").show();
	});
	$(".close").click(function () {
		$(".datve").hide();
		/* Act on the event */
	});
	$("#huy").click(function () {
		$(".datve").hide();
		/* Act on the event */
	});
	$("#da").click(function () {
		$(".datve").hide();
		/* Act on the event */
	});
	$(window).on('click', function (e) {
		if ($(e.target).is(".datve")) {
			$(".datve").hide();
		}
	});
});