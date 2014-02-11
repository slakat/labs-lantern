function popUpLinker(){
	
	$("#pop-open").on("click", popup('popUpDiv'));
	$("#pop-close").on("click", popup('popUpDiv'));
	$("#pop-open").on("click", toBack);
	$("#pop-close").on("click", toFront);

}
function toggle(div_id) {
	var el = document.getElementById(div_id);
	if ( el.style.display == 'none' ) {	el.style.display = 'block';}
	else {el.style.display = 'none';}
}
function blanket_size(popUpDivVar) {
	if (typeof window.innerWidth != 'undefined') {
		viewportheight = window.innerHeight;
	} else {
		viewportheight = document.documentElement.clientHeight;
	}
	if ((viewportheight > document.body.parentNode.scrollHeight) && (viewportheight > document.body.parentNode.clientHeight)) {
		blanket_height = viewportheight;
	} else {
		if (document.body.parentNode.clientHeight > document.body.parentNode.scrollHeight) {
			blanket_height = document.body.parentNode.clientHeight;
		} else {
			blanket_height = document.body.parentNode.scrollHeight;
		}
	}
	var blanket = document.getElementById('blanket');
	blanket.style.height = blanket_height + 'px';
	var popUpDiv = document.getElementById(popUpDivVar);
	//popUpDiv_height=blanket_height/2-150;//150 is half popup's height
	//popUpDiv.style.top = popUpDiv_height + 'px';
}
function window_pos(popUpDivVar) {
	if (typeof window.innerWidth != 'undefined') {
		viewportwidth = window.innerHeight;
	} else {
		viewportwidth = document.documentElement.clientHeight;
	}
	if ((viewportwidth > document.body.parentNode.scrollWidth) && (viewportwidth > document.body.parentNode.clientWidth)) {
		window_width = viewportwidth;
	} else {
		if (document.body.parentNode.clientWidth > document.body.parentNode.scrollWidth) {
			window_width = document.body.parentNode.clientWidth;
		} else {
			window_width = document.body.parentNode.scrollWidth;
		}
	}
	var popUpDiv = document.getElementById(popUpDivVar);
	window_width=window_width/2-150;//150 is half popup's width
	//popUpDiv.style.left = window_width + 'px';
}
function popup(windowname) {
	return function(){
	blanket_size(windowname);
	window_pos(windowname);
	toggle('blanket');
	toggle(windowname);		
	
};
}
$(popUpLinker);
$(document).on('page:load',popUpLinker);

function toBack()
{
	$aux=$('*').filter(function(){
   var position = $(this).css('position');
   return position === 'relative';
	});
	$aux.each(function(){
		$(this).css("z-index", -1 )
	});
}
function toFront()
{
	$aux=$('*').filter(function(){
   var position = $(this).css('position');
   return position === 'relative';
	});
	$aux.each(function(){
		$(this).css("z-index", 0 )
	});
}