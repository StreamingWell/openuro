class PagesController < ApplicationController
  before_filter :authenticate

  def home
  end

  def live
  end

  def archive
  end

  def pi
  end

  protected

  def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "admin" && password == "prostate2013"
 	 end
end
end