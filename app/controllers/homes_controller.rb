class HomesController < ApplicationController
  def top
     new_user_session_path
  end
  
  def after_sign_in_path_for(resource)
    about_path
  end
end
