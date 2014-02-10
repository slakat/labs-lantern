



function changeActive()
{	
	var activeHumano;
	var activeSerie;
	$("#butonBike").on("click", bikePress);
	$("#butonBK").on("click", bikePress);
	
}

function bikePress()
{
	if(typeof(activeHumano) !== "undefined" && activeHumano !== null)
	{
		alert("Hello");
		activeHumano.removeClass("active");
		activeHumano=null;
	}
	if(typeof(activeSerie) !== "undefined" && activeSerie !== null)
	{
		activeSerie.removeClass("active");
		activeSerie=null;
	}
	
	$("#butonBike").addClass("active");
	activeHumano=$("#butonBike");

	$("#butonBK").addClass("active");
	activeSerie=$("#butonBK");

}

$(changeActive);
$(document).on('page:load',changeActive);
