class Person < ApplicationRecord

    def index
        @people = Person.all
    end
    
    def show
        @person = Person.find(params[:id])
    end
      
    def new
        @person = Person.new
    end





















end











