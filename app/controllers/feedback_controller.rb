class FeedbackController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    if @feedback.valid?
      @success = true
      NotificationsMailer.new_feedback(@feedback).deliver
      # redirect_to(live_path, :notice => "Message was successfully sent.")
      respond_to do |format|
        format.js
        format.html
      end

    else
      @success = false

      respond_to do |format|
        format.js
      end
    end
  end

end
