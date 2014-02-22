class SessionsController < ApplicationController
	

  def new
  end

  def create
	  user = User.find_by_username(params[:username])
	  if user
	  	if user.attempts>5
				sleep 10
		end
	  	if user.authenticate(params[:password])
	  		@numero=user.attempts
	  		user.attempts=0
	  		user.save
	    	session[:user_id] = user.id
	    	redirect_to root_url, :notice => "Logged in!"+ @numero.to_s
		else
			user.attempts=user.attempts+1
			user.save
			render "new"
		end
	  else
	  	sleep 2
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end

end
