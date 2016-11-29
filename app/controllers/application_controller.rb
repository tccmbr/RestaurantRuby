class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @restaurants = Restaurant.all
  end
end
