class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all.order("missing_date desc").paginate(page: params[:page], per_page: 2)

  end

  def create
    @person = Person.new person_params

    if @person.save
      redirect_to @person, notice: "Heya Omkar! Person details have succesfully saved!!!"
    else
      render 'new', notice: "Oops! Person details couldn't be saved!!!"
    end
  end

  def new
    @person = Person.new
  end

  def edit

  end

  def update
    if @person.update person_params
      redirect_to @person, notice: "Hurray! Person details updated!!!"
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :nationality, :contact, :height, :gender, :description, :missing_date, :missing_location, :updates, :slug)
  end

  def find_person
    @person = Person.friendly.find(params[:id])
  end

end
