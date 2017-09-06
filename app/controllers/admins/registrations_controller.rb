class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin!, :redirect_unless_admin,  only: [:new, :create]
  skip_before_action :require_no_authentication

  private

  def redirect_unless_admin
    unless admin_signed_in?
      redirect_to root_path
    end
  end

  def sign_up(resource_name, resource)
    true
  end
end
