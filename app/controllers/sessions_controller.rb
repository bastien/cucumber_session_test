class SessionsController < ApplicationController
  def create
    session['logged_in'] = true
    redirect_to purchases_path
  end
  
  def destroy
    session['logged_in'] = false
    redirect_to purchases_path
  end
end
