class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    @users = User.all
  end

   def about

   end


end
