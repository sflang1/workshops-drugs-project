class WelcomeController < ApplicationController
  before_action :check_logged_in, :only => [:index]
  def index
  end

  def dashboard
    @available_drugs = AvailableDrug.all.order(:name).map{|drug| [drug.name, drug.id]}
  end

  def check_logged_in
    if user_signed_in?
      redirect_to user_root_path
    end
  end
end
