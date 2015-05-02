class HomeController < ApplicationController
  def index
    @projects = Project.all
    render "projects/index"
  end
end
