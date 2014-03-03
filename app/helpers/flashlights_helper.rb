module FlashlightsHelper

	def imgSerie(s)
	    if s=="bk"  
	    "c_2.jpg"
		elsif s=="rc"
		"c_3.jpg"
	    elsif s=="tk"
	    "c_4.jpg"
	    elsif s=="pd"
	    "c_5.jpg"
	    elsif s=="ld"
	    "c_6.jpg"
	    elsif s=="e"
	    "c_7.jpg"
	    elsif s=="fro"
	    "c_8.jpg"
	    elsif s=="ang"
	    "c_9.jpg"
	    else
	    "c_1.jpg"	
	    end
	end

		def infoSerie(s)
	    if s=="bk"  
	    "active"
		elsif s=="rc"
	    elsif s=="tk"
	    elsif s=="pd"
	    elsif s=="ld"
	    elsif s=="e"
	    elsif s=="fro"
	    elsif s=="ang"
	    else
	    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original."	
	    end
	end




end
