module SessionsHelper
  def logged_in
    !current_user.nil?
  end

  def log_out
    forget (current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
