class HomeController < ApplicationController

  def index
    @current_user = current_user
  end

  def tasks
  	@current_user = current_user
  	@tasks = Task.all
  end
end
