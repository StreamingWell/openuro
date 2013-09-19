class PagesController < ApplicationController
  before_filter :authenticate

  def home
  end

  def live
    @message = Message.new
  end

  def archive
  end

  def pi
  end

  def holding
  end

  def preregistration
  end

  def evaluation
    @message = Message.new
  end

  protected

  def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "admin" && password == "prostate2013"
 	 end
end
end