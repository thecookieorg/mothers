class AdminMailer < ActionMailer::Base
    default from: "no-reply@mothers.com"
    default to: "munajandu@gmail.com"
    
    def new_user(user)
        @user = user
       mail(subject: "New client #{user.email} has been registered on Mothers!") 
    end
end
