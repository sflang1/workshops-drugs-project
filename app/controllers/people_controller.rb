class PeopleController < ApplicationController
  #before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index,:new,:create]
  before_action :check_person_created, only: [:index]
  # GET /people
  # GET /people.json

   

  def index
    @people = Person.all
  end
  def new
    @person = Person.new
  end
  def create
    @person = Person.create(person_params)
    current_user.person = @person
    if current_user.save
      render :index
    else
    end
  end
  def check_person_created
    if(current_user.person_id.blank?)
      @person = Person.new
      flash[:notice] = "You have not completed your registration process. Fill this form"
      render :new
    end
  end
  def person_params
    params.require(:person).permit(:name,:lastname,:date_of_birth)
  end
end
