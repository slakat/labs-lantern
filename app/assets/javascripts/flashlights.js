
var activeHumano;
var activeSerie;
var activeProd;
	

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

function act(aux){


		var $products=$(".lantern-mini").find("img");

		for (index = 0; index < $products.length; ++index) {
			var aux=$($products[index]);
			prodActive(aux);
	    	
		}

}

function prodActive(aux){
		function colorer(){

			if(typeof(activeProd) !== "undefined" && activeProd !== null)
			{
				activeProd.removeClass("active");
				activeProd=null;
			}
			
			aux.addClass("active");
			activeProd=aux;

			
		}

		aux.on("click" , colorer);
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


document.onkeydown = keyH;

function keyH(e)
{
	 e = e || window.event;
	 if(e.keyCode == '37' || e.keyCode == '39')
	 {

	 e.preventDefault();
	 var $prod=$(".lantern-mini").find("a");
	 var indice=$prod.index($prod.find(".active").parent());

    if (e.keyCode == '37') {

        
        if(indice>0)
        {
        	$($prod[indice]).find("img").removeClass("active");
        	var aux=$($prod[indice-1]);
        	aux.find("img").addClass("active");
        	aux.click();

        }
    }
    else if (e.keyCode == '39') {

        if(indice<$prod.length-1)
        {
        	$($prod[indice]).find("img").removeClass("active");
        	var aux=$($prod[indice+1]);
        	aux.find("img").addClass("active");
        	aux.click();

        }
    }
	}

}

