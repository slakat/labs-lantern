module ApplicationHelper

	def navMainAktiv(actionName)
	    if params[:controller] == actionName  or params[:action] == actionName  
	    "active"
	    end
	end

end
