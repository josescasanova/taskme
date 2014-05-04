class HomeController < ApplicationController

  def index
    @current_user = current_user
  end

  def tasks
<<<<<<< HEAD
    @tasks = Task.all
=======
  	@current_user = current_user
  	@tasks = Task.all
>>>>>>> borja
  end
end
