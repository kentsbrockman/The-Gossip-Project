module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out(user)
    session.delete(:user_id)
    #forget(user)
  end

  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end

  def is_creator?(gossip)
    if gossip.user.id == current_user.id
      return true
    else
      return false
    end
  end

  def is_comment_creator?(comment)
    current_user = User.find_by(id: session[:user_id])
    if comment.user.id == current_user.id
      return true
    else
      return false
    end
  end

end
