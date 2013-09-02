class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    respond_to do |format|
      if @message.valid?
        NotificationsMailer.new_message(@message).deliver
        format.html { redirect_to(@message, :notice => "Message was successfully sent.")
        format.js  
      else
        flash.now.alert = "Please fill all fields."
        render :new
      end
    end

end