class UserMailer < ActionMailer::Base

  default from: 'notifications@localhost.com'

  def welcome_email(user)
    @user = user
    @url = root_url

    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end