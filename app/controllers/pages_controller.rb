class PagesController < ApplicationController
  def contact
  end

  def send_mail
    name = params[:name]
    mail = params[:mail]
    body = params[:comments]
    ContactMailer.contact_mail(name, mail, body).deliver

    redirect_to :controller => :pages, :action => :contact_succes , notice: 'Mensaje enviado'

  end

  def companies
  end

  def contact_succes
  end 
end
