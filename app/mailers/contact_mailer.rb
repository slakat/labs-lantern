class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_mail(name, mail , body)
  	@name = name
    @mail = mail
    @body = body
    
    mail(:to => "pietrord@hotmail.com", :subject=>"Alguien ha hecho contacto")
  end
end
