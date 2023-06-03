class WelcomeController < ApplicationController

  # GET /
  def index
    redirect_to dashboard_url
  end

end
