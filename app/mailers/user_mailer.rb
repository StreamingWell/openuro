class UserMailer < ActionMailer::Base
  default :from => "noreply@astellasoncology.co.uk"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: 'Log-in details for the Prostate Cancer Lunchtime Webinars', to: user.email)
  end

  def reminder_one_day(user)
    @user = user
    mail(subject: 'One day reminder', to: user.email)
  end

  def reminder_two_week(user)
    @user = user
    mail(subject: 'Two week reminder', to: user.email)
  end

  def archive_email(user)
    @user = user
    mail(subject: 'Archive Email', to: user.email)
  end

end
