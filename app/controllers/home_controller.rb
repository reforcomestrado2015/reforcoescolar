class HomeController < ApplicationController
  
  def index
     @rooms = Room.take(3)
     @disciplines = Discipline.take(3)
  end
  
end
