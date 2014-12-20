class WelcomeController < ApplicationController
  before_action :authorize_user

  def index
    if current_user.nil?
      redirect_to sign_up_path
    else
      redirect_to new_note_path
    end
  end

end
