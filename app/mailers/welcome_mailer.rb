class WelcomeMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def welcome_email(email, name) 
      #debugger
      #@user = params[:user] #@user = User.find(params[:id])
        @name = name
        mail(to: email, subject: 'Registration Complete! Thanks for Joining!')
    end
end
