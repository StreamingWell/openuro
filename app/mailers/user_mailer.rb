class UserMailer < ActionMailer::Base
  default :from => "noreply@astellasoncology.co.uk"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: 'Log-in details for the Prostate Cancer Lunchtime Webinars', to: user.email)
  end

end
