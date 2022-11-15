class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # if current_user
    #   redirect_to main_path
    # end
    @projects = Project.all
  end
end
