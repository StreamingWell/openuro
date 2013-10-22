class AdminMailer < ActionMailer::Base
  default :from => "noreply@astellasoncology.co.uk"
  default :to => "branden.mittra@streamingwell.com"

  def registration_notification(user)
    @user = user
    mail(subject: "New Registration")
  end

end
