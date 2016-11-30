class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @restaurants = Restaurant.all
    @comment = Comment.new
  end
end
