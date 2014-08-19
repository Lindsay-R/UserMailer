class UserMailer < ActionMailer::Base

  default from: 'notifications@localhost.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost.com:3000'

    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end