class HomeController < ApplicationController
  def index
    @projects = Project.all
    authorize @projects
    render "projects/index"
  end
end
