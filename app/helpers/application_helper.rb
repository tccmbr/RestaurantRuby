module ApplicationHelper
  def link_active(controller)
    'active' if params[:controller] == controller
  end
end
