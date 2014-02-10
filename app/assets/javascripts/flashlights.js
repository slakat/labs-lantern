
function changeActive()
{
	$("butonBike").on("click", function()
{
	alert("hello");
});
	
}

$(changeActive);
$(document).on('page:load',changeActive);


