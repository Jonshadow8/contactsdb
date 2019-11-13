class PeopleController < ApplicationController

  def index
      @people = Person.all
  end

  def show
      @person = Person.find(params[:id])
  end

  def new
      @person = Person.new
  end

  def create
      @person = Person.new(person_params)
      if @person.save
          redirect_to people_path, :notice => "Person created!!"
      else
          render 'new'
      end
  end

  def edit
      @person = Person.find(params[:id])
  end

  def update
      @person = Person.find(params[:id])
      if @person.update_attributes(person_params)
          redirect_to people_path, :notice => "Person edited!!"
      else
          render 'edit'
      end
  end

  def delete
      @person = Person.find(params[:id])
      @person.destroy
      redirect_to people_path, :notice => "Person deleted!!"
  end

  private def person_params
      params.require(:person).permit(:title, :age, :phone, :email)
  end

end