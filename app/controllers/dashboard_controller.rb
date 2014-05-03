class DashboardController < ApplicationController

  def index
  	binding.pry
  	@tasks = current_user.tasks.all
  end

end
