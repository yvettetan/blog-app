class ApplicationController < ActionController::Base
  # #helper method to make sure user is not admin to be sent back to home page
  helper_method :is_admin!

  private

  def is_admin!
    # #if user is logged in and if user is an admin
    if current_user&.admin
      nil
    else
      redirect_to root_path
    end
  end
end
