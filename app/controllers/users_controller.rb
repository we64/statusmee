class UsersController < ApplicationController
  
  helper_method :status_comments
  before_filter :login_redirect, :only => [:index, :update_status, :comment_status]
  
  def index
    
  end

  def status_comments(status_id)
    comment_query = "SELECT fromid, time, text FROM comment WHERE post_id='" + facebook_session.user.id.to_s + "_" + status_id.to_s + "'"
    comment_array = facebook_session.fql_query(comment_query)
    return comment_array
  end
      
  def update_status
    facebook_session.user.set_status(params[:message])
    redirect_to :back
  end
  
  def comment_status
    post_id = params[:status_id]
    status_comment = params[:status_comment]
    facebook_session.user.comment_on(post_id, status_comment)
    redirect_to :back
  end
  
  def logout_facebook
    clear_facebook_session_information
    redirect_to :back
  end
  
  private
  
  def login_redirect
    if not facebook_session
      redirect_to root_path
    end
  end
  
end
