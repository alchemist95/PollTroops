class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def current_user

@current_user ||= Person.find_by(id: cookies[:person_id]) if cookies[:person_id]
end

helper_method :current_user

end
