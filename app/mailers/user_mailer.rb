class UserMailer < ActionMailer::Base
  default :from => "noreply@astellasoncology.co.uk"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: 'Log-in details for the Prostate Cancer Lunchtime Webinars', to: user.email)
  end

  #def reminder_one_day(user)
   # @user = user
   # mail(subject: "Reminder re tomorrow's Prostate Cancer Lunchtime Webinar", to: user.email)
  #end

  def reminder_two_week(user)
    @user = user
    mail(subject: 'Reminder re the Prostate Cancer Lunchtime Webinar on January 15th 2014', to: user.email)
  end

  def archive_email(user)
    @user = user
    mail(subject: 'Notification that a recent Prostate Cancer Lunchtime Webinar is now available to view', to: user.email)
  end

  def evaluation_email(user)
    @user = user
    mail(subject: 'Feedback re the Prostate Cancer Lunchtime Webinar', to: user.email)
  end

end
