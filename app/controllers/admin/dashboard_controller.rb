class Admin::DashboardController < ApplicationController
  before_action :is_authorized

  def index
  end
  
  private def is_authorized
    unless is_admin?
      flash[:danger] = "You are not authorized to see Admin Dashboard. Please log in."
      redirect_to login_url
    end
  end
end
