class ContactsController < ApplicationController
  def contact
  end
  
  def send_email
    if verify_recaptcha
      @user = "#{params[:email]}"
    else
      flash[:warning] = 'Please verify that you are not a robot'
      redirect_to contact_path
      return
    end
    @subject = params[:category]
    @question = params[:question]
    
      # When we get SSL or TLS for heroku production server
      # if ContactMailer.send_question_email(@user, @subject, @question).deliver
        redirect_to email_confirm_path
  end
  
  def email_confirm
    if verify_recaptcha
    else
      flash[:warning] = 'Please verify that you are not a robot'
      redirect_to contact_path
      return
    end
  end
  
end
