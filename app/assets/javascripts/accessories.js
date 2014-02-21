


$(document).ajaxStart(function(){

	var $title=$("#modalTitle");
	var $body=$("#modalContent");

	$title.empty();
	$body.empty();

	$body.append('<div class="progress"><div>Loading…</div></div>');

});