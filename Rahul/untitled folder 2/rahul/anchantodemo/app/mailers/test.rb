class Test < ActionMailer::Base
  default from: "from@example.com"

   YourMailerName.user_email(self.user).deliver

   def notify
   	#@user = user
    mail( :to => 'rahul.shinde@anchanto.com', :subject => 'Thanks for signing up for our amazing app' )
   end
end
