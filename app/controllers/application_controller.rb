class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #sessions_helper.rbのモジュール読み込み
  include SessionsHelper
  
  private
  
  #logged_in?がfalseのとき（ログインしていないとき）に,
  #アクセスしようとしたURLを保存し、ログイン画面のURLにリダイレクト
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
