class MessageMailer < ApplicationMailer
  def contact(message)
    mail(to: "alnasser.njod1@gmail.com", subject: "This is an email")
  end
end
