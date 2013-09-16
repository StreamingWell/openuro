class ContactController < ApplicationController

def new
    @register = Register.new
  end

  def create
    @register = Register.new(params[:register])
    
    if @register.valid?
       @success = true
      redirect_to(root_path, :notice => "You have successfully registered.")
      respond_to do |format|
        format.js
      end

    else
      @success = false

      respond_to do |format|
        format.js
      end
    end
  end

end