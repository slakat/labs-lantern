class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_mail(name, mail , comments)
  	@name = name
    @mail = mail
    @comments = comments
    
    mail(:to => "pietrord@hotmail.com", :subject=>"Alguien ha hecho contacto")
  end
end
