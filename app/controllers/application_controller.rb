class ApplicationController < ActionController::Base
  before_action :require_login, only: [:new, :create, :destroy, :edit, :update]
  helper_method :current_user
  private

  def require_login
    if !session.has_key? :user_id
      redirect_to login_path
    end
  end

  def current_user
    if session.has_key? :user_id
      @user = User.find(session[:user_id])
      return @user
    else
      return nil
    end
  end
end
