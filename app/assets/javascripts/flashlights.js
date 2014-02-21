
var activeHumano;
	var activeSerie;
	var mostrar;

function changeActive()
{	
	var $normales=$(".botonHumano").find("img");
	var $series=$("botonSerie").find("a");

	for (index = 0; index < $normales.length-1; ++index) {
    	console.log($normales[index]);
	}
	
	
	
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
