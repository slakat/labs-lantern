
var activeHumano;
	var activeSerie;
	var mostrar;

function changeActive()
{	
	mostrar=$("#inicial")
	$("#butonBike").on("click", bikePress1);
	$("#butonBK").on("click", bikePress1);
	$("#butonRecargables").on("click", bikePress2);
	$("#butonRC").on("click", bikePress2);
	$("#butonFrontales").on("click", bikePress3);
	$("#butonHL").on("click", bikePress3);
	
}

function bikePress1()
{
	if(typeof(activeHumano) !== "undefined" && activeHumano !== null)
	{
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

	mostrar.toggle();
	mostrar=$("#lBK");
	mostrar.toggle();


}

function bikePress2()
{
	if(typeof(activeHumano) !== "undefined" && activeHumano !== null)
	{
		activeHumano.removeClass("active");
		activeHumano=null;
	}
	if(typeof(activeSerie) !== "undefined" && activeSerie !== null)
	{
		activeSerie.removeClass("active");
		activeSerie=null;
	}
	
	$("#butonRecargables").addClass("active");
	activeHumano=$("#butonRecargables");

	$("#butonRC").addClass("active");
	activeSerie=$("#butonRC");

	mostrar.toggle();
	mostrar=$("#lRC");
	mostrar.toggle();


}

function bikePress3()
{
	if(typeof(activeHumano) !== "undefined" && activeHumano !== null)
	{
		activeHumano.removeClass("active");
		activeHumano=null;
	}
	if(typeof(activeSerie) !== "undefined" && activeSerie !== null)
	{
		activeSerie.removeClass("active");
		activeSerie=null;
	}
	
	$("#butonFrontales").addClass("active");
	activeHumano=$("#butonFrontales");

	$("#butonHL").addClass("active");
	activeSerie=$("#butonHL");

	mostrar.toggle();
	mostrar=$("#lHL");
	mostrar.toggle();


}

$(changeActive);
$(document).on('page:load',changeActive);
