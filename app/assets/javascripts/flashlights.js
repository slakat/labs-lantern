
var mostrar=$("#inicial");
var activeHumano;
var activeSerie;

function changeActive()
{	
	
	
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

	mostrar.hide();
	mostrar=$("#lBK");
	mostrar.show();


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

	mostrar.hide();
	mostrar=$("#lRC");
	mostrar.show();


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

	mostrar.hide();
	mostrar=$("#lHL");
	mostrar.show();


}

$(changeActive);
$(document).on('page:load',changeActive);
