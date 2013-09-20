class FeedbackController < ApplicationController

def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    
    if @feedback.valid?
      FeedbackMailer.new_feedback(@feedback).deliver
      redirect_to(live_path, :notice => "Thank you. Your comments have been received.")

    else
      redirect_to(evaluation_path, :notice => "Please fill all fields.")
    end
  end

end
