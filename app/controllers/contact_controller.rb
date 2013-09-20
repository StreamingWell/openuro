class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      @success = true
      NotificationsMailer.new_message(@message).deliver
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