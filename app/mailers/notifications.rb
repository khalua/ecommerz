class Notifications < ActionMailer::Base
 def login_message(user)
  @user = user
  mail :to => user.email, :from => 'tony.contreras@gmail.com', :subject => 'Hi just noticed you logged in...'
 end

end