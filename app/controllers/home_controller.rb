class HomeController < ApplicationController

  def index
    @current_user = current_user
  end

  def tasks
    @tasks = Task.all
  end
end