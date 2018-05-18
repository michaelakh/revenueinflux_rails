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
    
      if ContactMailer.send_question_email(@user, @subject, @question).deliver
        flash[:success] = 'Your message has been sent'
        redirect_to email_confirm_path
      else
        render contact_path
      end
  end
  
  def email_confirm
  end
  
end
