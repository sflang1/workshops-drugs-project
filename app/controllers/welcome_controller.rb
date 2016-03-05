class WelcomeController < ApplicationController
  before_action :check_logged_in, :only => [:index]
  def index
  end

  def dashboard
    @available_drugs = [["Ibuprofeno", 1], ["Acetaminofén", 2], ["Viagra", 3]]

  end

  def check_logged_in
    if user_signed_in?
      redirect_to user_root_path
    end
  end
end
