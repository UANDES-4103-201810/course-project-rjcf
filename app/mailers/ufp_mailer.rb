class UfpMailer < ApplicationMailer
   default from: 'jahuerta1@miuandes.cl'
 
  def ufp() 
    @user = params[:user]
    mail(to: @user.email, subject: 'Thank you for funding')
  end
end
