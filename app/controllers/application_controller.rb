class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  around_filter :scope_current_tenancy

private
  def current_tenancy
    Tenancy.find_by_subdomain! request.subdomain
  end
  helper_method :current_tenancy

  def scope_current_tenancy
    Tenancy.current_id = current_tenancy.id
    yield
  ensure
    Tenancy.current_id = nil
  end
end
