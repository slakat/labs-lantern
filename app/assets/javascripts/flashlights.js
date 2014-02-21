
var activeHumano;
	var activeSerie;
	

function changeActive()
{	
	var $normales=$(".botonHumano").find("img");
	var $series=$(".botonSerie").find("a");

	for (index = 0; index < $normales.length; ++index) {
		var aux1=$($normales[index]);
		var aux2=$($series[index]);
		
		
    	LinkPress(aux1 , aux2);
    	LinkPress(aux1 , aux2);
	}
	
	
	
}

function LinkPress(hum , ser)
{
	function colorer(){

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
	
	hum.addClass("active");
	activeHumano=hum;

	ser.addClass("active");
	activeSerie=ser;
	}

	hum.on("click" , colorer);
	ser.on("click" , colorer);

}


$(changeActive);
$(document).on('page:load',changeActive);
