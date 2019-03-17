/*JS*/
function sd() {
	$.ajax({
		type : "POST",
		url : "/formulariomecanica",
		data : {
			codigo : ""
		},
		success : function(msg) {
			$('#formulariomecanica').show();
			$('#formulariomecanica').html(msg);
			anchorjes('formulariomecanica');
		}
	});
}
function anchorjes(cc) {
	$("#" + cc).fadeIn(1500);
	$('html, body').animate({
		scrollTop : $("#" + cc).offset().top
	}, 1500);
}