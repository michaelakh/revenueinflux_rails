class ContactMailer < ApplicationMailer
  default from:'emailservices33@gmail.com'
  def send_question_email(user, subject, question)
    @user = user
    @subject = "@user #{subject}"
    @question = question
    mail to: 'michael_ak@hotmail.co.uk', subject: @subject
  end
end
