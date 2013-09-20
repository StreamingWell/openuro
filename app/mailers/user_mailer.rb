class UserMailer < ActionMailer::Base
  default :from => "noreply@astellasoncology.co.uk"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: 'Thank you for registering', to: user.email)
  end
end
