class PagesController < ApplicationController
  before_filter :setup_negative_captcha, :only => [:contact , :send_mail]

  def contact
  end

  def send_mail
    if @captcha.valid?
    name = @captcha.values[:name]
    mail = @captcha.values[:mail]
    comments = @captcha.values[:comments]
    ContactMailer.contact_mail(name, mail, comments).deliver

    redirect_to :controller => :pages, :action => :contact_succes , notice: 'Mensaje enviado'
    else
      redirect_to :controller => :pages, :action => :contact , notice: 'Mensaje no enviado'
    end

  end

  def companies
  end

  def contact_succes
  end 
  private
  def setup_negative_captcha
    @captcha = NegativeCaptcha.new(
      # A secret key entered in environment.rb. 'rake secret' will give you a good one.
      secret: 'e43d246526b3c6287485da155d81728b95a22fe7ecb1e6f13688a02f69170536134b6001189ca1655e6462c37f595dce1dc4a899d3a8aecb8caed33679d01a05',
      spinner: request.remote_ip, 
      # Whatever fields are in your form
      fields: [:name, :mail, :comments],  
      params: params
    )
  end
end
