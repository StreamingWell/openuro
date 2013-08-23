class NotificationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"

  def new_message(message)
    @message = message
    mail(:subject => "Astellas Lunchtime Webinar Q&A")
  end

end