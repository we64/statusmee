class HomeController < ApplicationController
  
  #before_filter :login_redirect, :only => [:index]
  
  def index
    
  end
  
  private
  
  def login_redirect
    if facebook_session
      redirect_to :controller => "users"
    end
  end
  
end
