class NotificationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"
  default :cc => "branden@univrs.co.uk"

  def new_message(message)
    @message = message
    mail(:subject => "Astellas Oncology LIVE Lunchtime Webinars Q&A")
  end

end